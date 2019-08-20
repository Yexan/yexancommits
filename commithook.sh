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

echo 'Commit hook passed'

# Wait 8 seconds to be sure that the gif is generated and moved in folder
sleep 8

# Now commit and push changes
timeout 20 "cd ${0%/*} && ./handlenewcontent.sh"
