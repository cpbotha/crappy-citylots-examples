from pathlib import Path

import orjson

with Path("citylots.json").open() as f:
    j = orjson.loads(f.read())
