# nim c -d:danger --opt:speed --mm:orc parse_lots.nim
# /usr/bin/time -l ./parse_lots

import std/json

let jsonNode = parseFile("citylots.json")
