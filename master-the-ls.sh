#!/bin/bash

# -up           sort by access time and add / to dirs
# tr '\n' ','   replace line feed with comma
# sed 's/,$//'  remove last comma: s > substitute  ,$ > comma and end of line. // > with nothing

ls -up | tr '\n' ',' | sed 's/,$//'