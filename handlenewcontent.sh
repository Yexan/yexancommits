echo 'Handle new content'

old_git_mail=`git config user.email`
git config user.email contact.adrien.martinet@gmail.com

git add --all
git commit -m 'Add new gifs'
git push

git config user.email $old_git_mail

echo 'New GIF pushed'
