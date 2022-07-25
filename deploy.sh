rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:niuniu315/wave-ui-website.git &&
git push -f -u origin master &&
cd ..
echo https://niuniu315.github.io/wave-ui-website/index.html