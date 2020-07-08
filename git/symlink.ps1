$target_path = Join-Path -Resolve -Path $PSScriptRoot -ChildPath "target"
Remove-Item -Recurse -Force ~\.config\git
New-Item -ItemType Junction -Path ~\.config\git -Target $target_path | Out-Null
