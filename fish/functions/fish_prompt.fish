function fish_prompt
  echo -n '['
  set_color green; echo -n (whoami)' '
  set_color blue; echo -n (basename (prompt_pwd))
  set_color normal
  echo -n ']'
  set_color red; echo -n '('(git_branch)')'
  echo ' '
end
