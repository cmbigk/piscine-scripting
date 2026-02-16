#!/bin/bash

# get json, select entry wit id=1 and only their name and powerstats.power
# print the lines with name and power (omits curly braces)

#curl -s https://01.gritlab.ax/assets/superhero/all.json \
#| jq '.[] | select(.id == 1) | {name, power: .powerstats.power}' \
#| grep -E '"name"|"power"'


curl -s https://01.gritlab.ax/assets/superhero/all.json \
| jq -r '.[] | select(.id == 1) | "  \"name\": \"\(.name)\",\n    \"power\": \(.powerstats.power),"'