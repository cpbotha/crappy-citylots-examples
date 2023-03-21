# nimble install jsmn
# nim c -d:danger --opt:speed --mm:orc parse_lots_jsmn.nim
# /usr/bin/time -l ./parse_lots_jsmn

# JsmnNotEnoughTokensException whoops

import jsmn

# initialtokensiez 1024, but autoresize as the 190MB file yields many more
let r = parseJson(readFile("citylots.json"),1024, true)
