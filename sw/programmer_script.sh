#!/bin/bash

source_dir="/diskd/gitlab/teknofest/tekno-sw/outputs/coremark"
dest_dir="/diskd/gitlab/teknofest/tekno-sw/outputs/coremark_current.hex"
python_script="/diskd/gitlab/teknofest/sw/SendData.py"
sleep_time=50 #this is initial sleep time.
programming_time=1
for file in "$source_dir"/*
do
  if [[ -f "$file" ]]
  then
    cp "$file" "$dest_dir"
    echo "File $file copied to $dest_dir"
    python "$python_script"
    echo "pythonscript_sleeping: $sleep_time second"
    echo $sleep_time
    sleep "$sleep_time"
    sleep_time=$(($sleep_time*2))
  fi
done