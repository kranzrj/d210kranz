commands

find:&
replace:&amp

find:^.+
replace:<movie>\0</movie>

find:(<movie>)(.+?)(\t)
replace:\1<title>\2</title>

find:(?s).*
replace:<xml>\0</xml>

find:\b(19[0-9]{2}20[0=9]{2]})\b
replace:<date>\1</date>

find:(\d+)\s*min
replace:<time>\1</time>

find:(?<=</date>)\s*(.*?)\s*(?=<time>)
replace:<origin>\0</origin>
