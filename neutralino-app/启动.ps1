$htmlFile = $PSScriptRoot + "\resources\index.html"
$htmlUrl = "file:///" + ($htmlFile -replace '\\', '/')

if (Get-Command msedge -ErrorAction SilentlyContinue) {
    & msedge --app=$htmlUrl --new-window --window-size=1400,900
} elseif (Get-Command chrome -ErrorAction SilentlyContinue) {
    & chrome --app=$htmlUrl --new-window --window-size=1400,900
} else {
    Start-Process $htmlUrl
}
