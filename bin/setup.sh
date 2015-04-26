#!/bin/sh

set -e

if ! [ -d bin/setup.d ]; then
	printf "can't locate bin/setup.d/\n" >&2
	exit 1
fi

for SCRIPT in `ls bin/setup.d/*.sh | sort`; do
	printf "executing $SCRIPT..."
	"$SCRIPT"
	printf "done\n"
done
