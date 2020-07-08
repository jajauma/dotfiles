$target_path = Join-Path -Resolve -Path $PSScriptRoot -ChildPath "target"
Remove-Item -Recurse -Force ~\.ssh
New-Item -ItemType Junction -Path ~\.ssh -Target $target_path | Out-Null
