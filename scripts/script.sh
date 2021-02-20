#!/bin/bash
#flutter clean
#flutter test --coverage
#genhtml -o coverage coverage/lcov.info
#open coverage/index.html

#flutter clean
#rm -rf ./coverage
#flutter test --coverage
#lcov --remove coverage/lcov.info 'lib/src/domain/models/*' -o coverage/new_lcov.info
#genhtml -o coverage coverage/new_lcov.info
#open coverage/index.html

flutter clean
rm -rf ./coverage
flutter test --coverage
#lcov --remove coverage/lcov.info -o coverage/new_lcov.info
genhtml -o coverage coverage/new_lcov.info
open coverage/index.html