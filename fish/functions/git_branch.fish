function git_branch
  git branch 2> /dev/null | grep '*' | gsed -e 's/\s*\*\s*//'
end
