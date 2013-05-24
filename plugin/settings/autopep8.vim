"sudo pip install autopip8 first"

map <F11> :call FormartSrc()<CR>

func FormartSrc()
    exec "w"
    if &filetype == 'c'
    exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
    exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
    exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
    exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
    exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
    exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
    exec "!astyle --style=gnu --suffix=none %"
    endif
    exec "e! %"
endfunc
