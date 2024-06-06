#!/bin/bash

ERROR_EXIT() {
	echo "$1" >&2

	rm -f /tmp/$$-*
	exit 1

}


#実際の出力
 ./hello.sh > /tmp/$$-result


#して欲しかった出力
echo="hello"> /tmp/$$-ans
echo="world" >> /tmp/$$-ans


#test1
def /tmp/$$-result /tmp/$$-ans && echo "ok" || ERROR_EXIT "error-test1"

#test2
def /tmp/$$-result /tmp/$$-ans && echo "ok" || ERROR_EXIT "error-test1"


rm -f /tmp/$$-*




