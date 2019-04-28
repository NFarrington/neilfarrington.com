#!/bin/bash

aws s3 cp . s3://neilfarrington.com/ --recursive --exclude "*" --include "*.html"
aws s3api put-bucket-website --bucket neilfarrington.com --website-configuration file://site.json
aws s3api put-bucket-website --bucket www.neilfarrington.com --website-configuration file://www-redirect.json
