echo "Starting"

Remove-Item "E:\PawankumarG.com\dev\Github\*" -exclude "E:\PawankumarG.com\dev\Github\.git"
echo "1 moment.."
sleep(2)
echo "removed"
Copy-Item -Recurse "E:\PawankumarG.com\dev\Green_PawankumarG\_site\*" "E:\PawankumarG.com\dev\Github\"
echo "copied"

echo "starting Git operations.."

cd E:

cd E:\PawankumarG.com\dev\Github\

git add * --force

git commit -m "Changes from Auto Push: $(Get-Date)"

git push origin main

echo "Completed..."