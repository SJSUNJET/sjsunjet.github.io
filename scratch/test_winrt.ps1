$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.Runtime.WindowsRuntime
Add-Type -AssemblyName System.Drawing
[Windows.Data.Pdf.PdfDocument, Windows.Data.Pdf, ContentType = WindowsRuntime] | Out-Null

$asTaskGeneric = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object { $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncOperation`1' })[0]
$asTaskAction = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object { $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncAction' })[0]

function Await-Op($op, $type) {
    $method = $asTaskGeneric.MakeGenericMethod($type)
    $task = $method.Invoke($null, @($op))
    $task.GetAwaiter().GetResult()
}

function Await-Action($op) {
    $task = $asTaskAction.Invoke($null, @($op))
    $task.GetAwaiter().GetResult()
}

function Render-PdfPage($pdfRelPath, $pageIdx, $outRelPath) {
    $fullIn = (Resolve-Path $pdfRelPath).Path
    $fullOut = Join-Path (Get-Location).Path $outRelPath
    Write-Host "Rendering $fullIn [page $pageIdx] -> $fullOut"
    $fs = [System.IO.File]::OpenRead($fullIn)
    $ras = [System.IO.WindowsRuntimeStreamExtensions]::AsRandomAccessStream($fs)
    $doc = Await-Op ([Windows.Data.Pdf.PdfDocument]::LoadFromStreamAsync($ras)) ([Windows.Data.Pdf.PdfDocument])
    $page = $doc.GetPage($pageIdx)
    $outStream = New-Object Windows.Storage.Streams.InMemoryRandomAccessStream
    $opts = New-Object Windows.Data.Pdf.PdfPageRenderOptions
    $opts.DestinationWidth = 2000
    Await-Action ($page.RenderToStreamAsync($outStream, $opts))
    $netStream = [System.IO.WindowsRuntimeStreamExtensions]::AsStreamForRead($outStream)
    $img = [System.Drawing.Image]::FromStream($netStream)
    $img.Save($fullOut, [System.Drawing.Imaging.ImageFormat]::Png)
    $img.Dispose()
    $netStream.Dispose()
    $outStream.Dispose()
    $page.Dispose()
    $ras.Dispose()
    $fs.Dispose()
}

Render-PdfPage "assets\me3-dmt\C.RECOVERY SYSTEM ASSEMBLY Drawing.pdf" 0 "assets\me3-dmt\drawing-recovery-assembly-sheet1.png"
Render-PdfPage "assets\me3-dmt\C.RECOVERY SYSTEM ASSEMBLY Drawing.pdf" 1 "assets\me3-dmt\drawing-recovery-assembly-sheet2.png"
Render-PdfPage "assets\me3-dmt\Bulkhead Drawing.pdf" 0 "assets\me3-dmt\drawing-bulkhead.png"
Render-PdfPage "assets\me3-dmt\Nose Cone Assembly Drawing.pdf" 0 "assets\me3-dmt\drawing-nosecone-assembly.png"
Render-PdfPage "assets\me3-dmt\Interface Ring Drawing.pdf" 0 "assets\me3-dmt\drawing-interface-ring.png"
Write-Host "DONE"
