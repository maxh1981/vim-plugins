#!/bin/sh

if ! [ -d bin/setup.d ]; then
	printf "can't locate bin/setup.d/\n" >&2
	exit 1
fi

for SCRIPT in `ls bin/setup.d/*.sh | sort`; do
	printf "executing $SCRIPT..." &&
	$SCRIPT &&
	printf "done\n" &&
	continue

	print "failed\n" &&
	exit 1
done
