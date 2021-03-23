#!/usr/bin/env sh

# abort on errors
#set -e

# build
npm run build

cd dist 
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git add -A
git commit -m 'deploy => dist subtree'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# https://robdig7x.github.io/vue-oficina-mobile/
git push origin --delete gh-pages
cd -
git subtree push --prefix dist origin gh-pages

#git push -f git@github.com:robdig7x/vue-oficina-mobile.git master:gh-pages

