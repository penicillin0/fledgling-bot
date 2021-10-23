#!/bin/sh
cd ../src
rm -r lambda.zip
zip -r lambda.zip .
aws lambda update-function-code \
--zip-file fileb://./lambda.zip \
--function-name kakedashigachi
rm -r lambda.zip
