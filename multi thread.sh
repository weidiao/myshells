job_num=10

function do_work()
{
    echo "Do work.."
}

for ((i=0; i < job_num ;i++)); do
    echo "Fork job $i"
    (do_work) &
done

wait   # wait for all job done
echo "All job have been done!"#!/bin/bash
