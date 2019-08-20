timeout() {

  time=$1

  # start the command in a subshell to avoid problem with pipes
  # (spawn accepts one command)
  command="/bin/sh -c \"$2\""

  expect -c "set echo \"-noecho\"; set timeout $time; spawn -noecho $command; expect timeout { exit 1 } eof { exit 0 }"    

  if [ $? = 1 ] ; then
    echo "Timeout after ${time} seconds"
  fi

}

function handle_new_content {
  git add --all
  git commit -m 'Add new gifs'
  git push
}

export -f handle_new_content

timeout 5000 "handle_new_content"
