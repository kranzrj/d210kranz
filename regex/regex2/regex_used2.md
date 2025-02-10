commands

find:(?s).*
replace:<xml>\0</xml>

find:^\s*(I+)\s*$
replace:<sonnet number="\1">

find:^\s*([IVXLCDM]+)\s*$
replace:<sonnet number="\1">

find:^\s{2,}(.+)$
replace:<line>\1</line>

find:(<sonnet number="[^"]+">)(\s*)
replace:\1\n\n

find:
