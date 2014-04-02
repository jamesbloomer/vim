" Vim syntax file
"  Language: Writing prose
"  Maintainer: James Bloomer
"  Latest Revision: 02.04.2014 

if exists("b:current_syntax")
    finish
endif

syntax region writingComment start=+\[+ end=+\]+

let b:current_syntax = "writing"

highlight link writingComment Error
