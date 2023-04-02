echo "Starting"

Remove-Item "F:\PawankumarG.com\dev\Github\*" -exclude "F:\PawankumarG.com\dev\Github\.git"
echo "1 moment.."
sleep(2)
echo "removed"
Copy-Item -Recurse "F:\PawankumarG.com\dev\Green_PawankumarG\_site\*" "F:\PawankumarG.com\dev\Github\"
echo "copied"

echo "starting Git operations.."

cd F:

cd F:\PawankumarG.com\dev\Github\

git add * --force

git commit -m "Changes from Auto Push: $(Get-Date)"

git push origin main

echo "Completed..."