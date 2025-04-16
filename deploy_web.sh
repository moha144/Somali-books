#!/data/data/com.termux/files/usr/bin/bash

# Tallaabooyinka
echo "Building Flutter Web..."
flutter build web

echo "Going to web build folder..."
cd build/web

echo "Initializing new Git repo in web folder..."
git init
git remote add origin https://github.com/moha144/Somali-books.git
git checkout -b gh-pages
git add .
git commit -m "Deploy Flutter web version to GitHub Pages"
git push origin gh-pages --force

echo "Deployment complete!"
echo "Check your site at: https://moha144.github.io/Somali-books/"
