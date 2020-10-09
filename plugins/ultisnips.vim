let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsEditSplit="vertical"


"snippet sign 'Signature'
"Cordialement,

"Marc Partensky
"endsnippet

"snippet today "Date"
"`date +%F`
"endsnippet

"snippet box "Box"
"`!p snip.rv = '┌' + '─' * (len(t[1]) + 2) + '┐'`
"│ $1 │
"`!p snip.rv = '└' + '─' * (len(t[1]) + 2) + '┘'`
"$0
"endsnippet
