$source = @"
using System;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Threading.Tasks;
using Windows.Data.Pdf;
using Windows.Storage;
using Windows.Storage.Streams;

public class PdfRenderer
{
    public static void RenderPage(string pdfPath, string outputPath, uint pageIndex, uint width)
    {
        RenderPageAsync(pdfPath, outputPath, pageIndex, width).GetAwaiter().GetResult();
    }

    private static async Task RenderPageAsync(string pdfPath, string outputPath, uint pageIndex, uint width)
    {
        StorageFile file = await StorageFile.GetFileFromPathAsync(Path.GetFullPath(pdfPath));
        PdfDocument doc = await PdfDocument.LoadFromFileAsync(file);
        if (pageIndex >= doc.PageCount) return;

        using (PdfPage page = doc.GetPage(pageIndex))
        using (InMemoryRandomAccessStream stream = new InMemoryRandomAccessStream())
        {
            var options = new PdfPageRenderOptions();
            if (width > 0) options.DestinationWidth = width;

            await page.RenderToStreamAsync(stream, options);

            using (Stream netStream = stream.AsStreamForRead())
            using (Image img = Image.FromStream(netStream))
            {
                img.Save(Path.GetFullPath(outputPath), ImageFormat.Png);
            }
        }
    }
}
"@

Add-Type -TypeDefinition $source -Language CSharp -ReferencedAssemblies @(
    "System.Drawing",
    "System.Runtime.WindowsRuntime",
    "C:\Windows\System32\WinMetadata\Windows.Data.Pdf.winmd",
    "C:\Windows\System32\WinMetadata\Windows.Storage.winmd",
    "C:\Windows\System32\WinMetadata\Windows.Storage.Streams.winmd",
    "C:\Windows\System32\WinMetadata\Windows.Foundation.winmd"
)

[PdfRenderer]::RenderPage("assets/me3-dmt/C.RECOVERY SYSTEM ASSEMBLY Drawing.pdf", "assets/me3-dmt/drawing-recovery-assembly-sheet1.png", 0, 2400)
[PdfRenderer]::RenderPage("assets/me3-dmt/C.RECOVERY SYSTEM ASSEMBLY Drawing.pdf", "assets/me3-dmt/drawing-recovery-assembly-sheet2.png", 1, 2400)
[PdfRenderer]::RenderPage("assets/me3-dmt/Bulkhead Drawing.pdf", "assets/me3-dmt/drawing-bulkhead-sheet1.png", 0, 2400)
[PdfRenderer]::RenderPage("assets/me3-dmt/Nose Cone Assembly Drawing.pdf", "assets/me3-dmt/drawing-nosecone-assembly.png", 0, 2400)
[PdfRenderer]::RenderPage("assets/me3-dmt/Interface Ring Drawing.pdf", "assets/me3-dmt/drawing-interface-ring.png", 0, 2400)

Write-Host "All drawings rendered successfully!"
