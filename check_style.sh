#!/bin/sh
#set -x
# From gist at https://gist.github.com/chadmaughan/5889802

# run the tests with the gradle wrapper
./gradlew clean checkstyleModified -PbaseBranch=origin/master --no-daemon

# store the last exit code in a variable
RESULT=$?

# return the './gradlew checkstyleMain' exit code
exit $RESULT
