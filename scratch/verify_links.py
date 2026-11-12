import re
import os
import urllib.parse

base_dir = os.path.abspath(".")

def check_file(filepath):
    print(f"Checking {filepath}...")
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    # Find src and href attributes
    matches = re.findall(r'(?:href|src|data)=["\']([^"\']+)["\']', content)
    file_dir = os.path.dirname(filepath)
    errors = []

    for link in matches:
        if link.startswith("http://") or link.startswith("https://") or link.startswith("#") or link.startswith("mailto:"):
            continue
        
        # Strip query or fragment
        clean_link = link.split("?")[0].split("#")[0]
        unquoted = urllib.parse.unquote(clean_link)
        
        # Check relative path
        target_path = os.path.normpath(os.path.join(file_dir, unquoted))
        if not os.path.exists(target_path):
            errors.append(f"Broken link: {link} -> {target_path}")

    if errors:
        for err in errors:
            print("  [ERROR]", err)
    else:
        print("  All local links valid!")

for root, _, files in os.walk("."):
    if any(p in root for p in [".git", "_site", ".gemini", "scratch", "_drafts"]):
        continue
    for f in files:
        if f.endswith((".md", ".html")):
            check_file(os.path.join(root, f))
