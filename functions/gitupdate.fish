function gitupdate
git add .;
git status;
git commit -a -m "$argv";
git push;
end
