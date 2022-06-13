vim.cmd [[
  let g:word_count=wordcount().words
  function WordCount()
      if has_key(wordcount(),'visual_words')
          let g:word_count=wordcount().visual_words."/".wordcount().words."W" " count selected words
          let g:char_count=wordcount().visual_chars."/".wordcount().chars."C" " count selected charsh
      else
          let g:word_count=wordcount().words."W" " or shows words 'so far'
          let g:char_count=wordcount().chars."C"
      endif
      return g:word_count." ".g:char_count
  endfunction

  let g:visual_word_count=""
  function VisualWordCount()
      if has_key(wordcount(),'visual_words')
          let g:word_count=wordcount().visual_words."W" " count selected words
          let g:char_count=wordcount().visual_chars."C" " count selected charsh
          return g:word_count." ".g:char_count
      else
        return ""
      endif
  endfunction

  let g:lightline = {
    \ 'mode_map': {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'R',
    \ 'v' : 'V',
    \ 'V' : 'VL',
    \ "\<C-v>": 'VB',
    \ 'c' : 'C',
    \ 's' : 'S',
    \ 'S' : 'SL',
    \ "\<C-s>": 'SB',
    \ 't': 'T',
    \ },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste', 'vwordcount' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype', 'wordcount' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \   'wordcount': 'WordCount',
    \   'vwordcount': 'VisualWordCount'
    \ },
  \ }
]]
