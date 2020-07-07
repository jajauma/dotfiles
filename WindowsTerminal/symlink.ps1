$path = Join-Path -Resolve -Path $env:LOCALAPPDATA `
  -ChildPath "Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"
$target_path = Join-Path -Resolve -Path $PSScriptRoot -ChildPath "target"

Remove-Item -Recurse -Force $path
New-Item -ItemType Junction -Path $path -Target $target_path | Out-Null
