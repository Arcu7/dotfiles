for remotebranch in $(git branch -r | grep -v HEAD); do
  git branch --track ${remotebranch#origin/} $remotebranch
done
