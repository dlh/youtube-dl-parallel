#!/bin/bash

passed=0
failed=0
for f in $(ls test/test_*.sh); do
    if bash "$f"; then
        ((passed++))
    else
        ((failed++))
    fi
done

test $failed -gt 0 && echo
echo "$passed passed tests"
echo "$failed failed tests"
test $failed -gt 0 && exit 1
exit 0
