#!/bin/bash

# Fetch the file, print first and last lines
curl -s https://assets.01-edu.org/devops-branch/HeadTail.txt | {
  head -n 1
  tail -n 1
}