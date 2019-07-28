@powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[scriptblock]::create((gc \"%~f0\"|?{$_.readcount -gt 1})-join\"`n\");&$s" %*&goto:eof

git -c diff.mnemonicprefix=false -c core.quotepath=false --no-optional-locks push -v --tags origin master:master