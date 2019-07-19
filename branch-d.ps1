$(git branch --merged).Trim() | Select-String -Pattern "(\*|^master$)" -NotMatch | % { git branch -d $_ }
