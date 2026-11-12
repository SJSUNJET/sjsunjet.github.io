Add-Type -AssemblyName System.Runtime.WindowsRuntime
$asTaskGeneric = [System.WindowsRuntimeSystemExtensions].GetMethods() | ? { $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncOperation`1' }

function Await-AsyncOp($op, $type) {
    $method = $asTaskGeneric.MakeGenericMethod($type)
    $task = $method.Invoke($null, @($op))
    $task.Wait()
    return $task.Result
}

[Windows.Storage.StorageFile, Windows.Storage, ContentType = WindowsRuntime] | Out-Null
$full = [System.IO.Path]::GetFullPath('assets/me3-dmt/Bulkhead Drawing.pdf')
$op = [Windows.Storage.StorageFile]::GetFileFromPathAsync($full)
$file = Await-AsyncOp $op ([Windows.Storage.StorageFile])
Write-Host "Success loading file: $($file.Name)"
