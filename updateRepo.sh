echo $(echo "# programs" >> README.md);
echo $(git init);
echo $(git add .);
echo $(git commit -m "first commit");
echo $(git branch -M main);
echo $(git remote -v);
echo $(git push -u origin main);

