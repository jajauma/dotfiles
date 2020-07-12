$target_path = Join-Path -Resolve -Path $PSScriptRoot -ChildPath "target"
Remove-Item -Recurse -Force ~\vimfiles
New-Item -ItemType Junction -Path ~\vimfiles -Target $target_path | Out-Null
