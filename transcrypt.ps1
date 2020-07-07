$git_inst_dir = (Get-Item (Get-Command "git").Path).Directory.Parent.FullName
$bash_executable = Join-Path -Resolve -Path "$git_inst_dir" `
  -ChildPath 'bin/bash.exe'
$transcrypt = Join-Path -Resolve -Path $PSScriptRoot `
  -ChildPath '.tools/transcrypt/transcrypt'
& $bash_executable $transcrypt @Args
