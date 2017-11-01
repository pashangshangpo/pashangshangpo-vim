if exists("b:current_syntax")
    finish
endif

" todo

" 注释
syntax match todoComment "\v\/\/.*$"
highlight link todoComment Comment

hi todoComment ctermfg=102

" 字符串
syntax region todoH1 start=/\v\*/ end=/\v$/
highlight link todoH1 String
hi todoH1 ctermfg=33

syntax region todoX start=/\v\@/ end=/\v /
highlight link todoX String
hi todoX ctermfg=magenta

syntax region todoW start=/\v\?/ end=/\v /
highlight link todoW String
hi todoW ctermfg=blue

syntax region todoSee start=/\v\~/ end=/\v /
highlight link todoSee String
hi todoSee ctermfg=241

syntax region todoD start=/\v\$/ end=/\v /
highlight link todoD String
hi todoD ctermfg=172

syntax region todoT start=/\vt/ end=/\v /
highlight link todoT String
hi todoT ctermfg=196

syntax region todoDefault start=/\v\+/ end=/\v /
highlight link todoDefault String
hi todoDefault ctermfg=29

let b:current_syntax = "todo"
