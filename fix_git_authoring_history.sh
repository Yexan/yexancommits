cd ../.. &&
mkdir temp &&
cd temp &&
git clone --bare https://github.com/Yexan/yexancommits.git &&
cd yexancommits.git &&
git filter-branch --env-filter '

OLD_EMAIL="adrien.martinet@rosemood.fr"
CORRECT_NAME="Yexan"
CORRECT_EMAIL="contact.adrien.martinet@gmail.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags &&

git push --force --tags origin 'refs/heads/*' &&
cd .. &&
rm -rf yexancommits.git
