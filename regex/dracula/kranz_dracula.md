# dracula regex

Find: ` & `

Replace: ` &amp; `
- fixes &'s

Find: ` \n{3,} `

Replace: ` \n\n `
- spacing

Find: ` (.+) `

Replace: ` <drac>\n\1\n</drac> `
- root tag

Find: ` (D R A C U L A) `
 
Replace: ` <title>\1</title> `
- dracula title
 
Find: ` (CHAPTER )([IVXCML]+) `
 
Replace: ` <chapterHeading>\1\2</chapterHeading> `
- chapter headings
 
Find: ` <chapterHeading>(CHAPTER )([IVXCML]+)</chapterHeading> `

Replace: ` </chapter>\n<chapter num="\2"><chapterHeading>\1\2</chapterHeading> `
- chapter headings

Find: ` \n\n</chapter> `

Replace : ` \n</chapter> `
- spacing

Find: ` (^\s*\n) `

Replace: ` </p>\1<p> `
- p tags for paragraphs

Find: ` (<chapter (.+?))\n</p> `

Replace: ` \1\n `
- changes p tags around chapter headings

Find: ` (</chapter>) `

Replace: ` </p>\n\1 `
- changes p tags at the end of some chapters