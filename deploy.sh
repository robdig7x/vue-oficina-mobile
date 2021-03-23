#!/usr/bin/env sh

# abort on errors
#set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add .
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# https://robdig7x.github.io/vue-oficina-mobile/
#6f3ef0f060f3d59f39b8075e69cce2b938c8149d
git remote add origin git@github.com:robdig7x/vue-oficina-mobile.git
git push -u origin gh-pages

#git push -f git@github.com:robdig7x/vue-oficina-mobile.git master:gh-pages

cd -
