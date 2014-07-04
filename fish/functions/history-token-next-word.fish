function history-token-next-word
  set -g commandline_buffer (commandline)
  if test -n $commandline_buffer
    set -g trim_buffer (echo $commandline_buffer | gsed -e 's/\s.*//g')
    set -g blacklist 'for' 'and' 'begin' 'break' 'breakpoint' 'case' 'else' 'end' 'if' 'not' 'or' 'switch' 'while'
    set -g blacklist (echo '^'$blacklist | gsed -e 's/\s/|/g')'|^ .*'
    set -g complete_list '^'(complete -C$trim_buffer | cut -f1 | ag -v '\n' | egrep -v $blacklist | gsed -e 's/\s/|/g')
    set -g filter (echo $complete_list | gsed 's/-/\\\-/g' | gsed 's/\+/\\\+/g' | gsed -e 's/\s/|/g')
    set -g words (history | ag "$filter" | ag $commandline_buffer)
    if test 0 -lt (count $words)
      set -g token (echo $words[1] | gsed "s/$commandline_buffer//" | cut -d' ' -f1)
      set -l completion_word (echo $words[1] | gsed "s/\\($token\\).*\$/\\1/")' '
      commandline -r $completion_word
    end
  end
end
