import re
import os
import urllib.parse

def check_file(filepath):
    print(f"Checking {filepath}...")
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    # Handle Liquid quotes like href="{{ '/assets/...' | relative_url }}" as well as standard attributes
    matches = re.findall(r'(?:href|src|data)="([^"]+)"|(?:href|src|data)=\'([^\']+)\'', content)
    file_dir = os.path.dirname(filepath)
    errors = []

    for m1, m2 in matches:
        link = m1 or m2
        if link.startswith(("http://", "https://", "#", "mailto:")):
            continue

        if "{{" in link:
            inner = re.search(r"'([^']+)'", link)
            if not inner:
                continue
            rel = urllib.parse.unquote(inner.group(1).lstrip("/"))
            if rel == "":
                continue
            if not os.path.exists(rel):
                errors.append(f"Broken Liquid link: {link} -> {rel}")
            continue

        clean_link = link.split("?")[0].split("#")[0]
        unquoted = urllib.parse.unquote(clean_link)
        target_path = os.path.normpath(os.path.join(file_dir, unquoted))
        if unquoted.endswith(".html") and os.path.exists(target_path[:-5] + ".md"):
            continue
        if not os.path.exists(target_path):
            errors.append(f"Broken link: {link} -> {target_path}")

    if errors:
        for err in errors:
            print("  [ERROR]", err)
        return len(errors)
    else:
        print("  All local links valid!")
        return 0

total_errors = 0
for root, _, files in os.walk("."):
    if any(p in root for p in [".git", "_site", ".gemini", "scratch", "_drafts"]):
        continue
    for f in files:
        if f.endswith((".md", ".html")):
            total_errors += check_file(os.path.join(root, f))

print(f"\nTotal errors: {total_errors}")
raise SystemExit(1 if total_errors else 0)
