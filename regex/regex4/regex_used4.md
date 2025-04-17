# mulan markdown regex steps


Find: ` \n\n `

Replace: ` </sp>\n\n<sp> `
- wraps sp around the speech chunks after manually creating space

Find: ` (.+) `

Replace: ` <root>\n\0\n</root> `
- gives the entire file a root element