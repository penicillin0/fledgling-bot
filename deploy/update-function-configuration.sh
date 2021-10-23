#!/bin/sh
aws lambda update-function-configuration \
--function-name kakedashigachi \
--layers "arn:aws:lambda:ap-northeast-1:445158105293:layer:tweepy:1" \
--environment Variables={`cat ../.env | tr -s "\n" | tr '\n' ',' | sed s/,$//`}
