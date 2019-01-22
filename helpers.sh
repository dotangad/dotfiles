mkcd() {
  mkdir $1;
  cd $1;
}

settitle() {
  echo -n -e "\033]0;$1\007\c"
}

parse_git_branch() {
  git_status="$(git status 2> /dev/null)"
  pattern="On branch ([^[:space:]]*)"
  if [[ ! ${git_status} =~ "(working (tree|directory) clean)" ]]; then
    state="*"
  fi
  if [[ ${git_status} =~ ${pattern} ]]; then
    branch=${match[1]}
    branch_cut=${branch:0:35}
    if (( ${#branch} > ${#branch_cut} )); then
      echo "(${branch_cut}…${state})"
    else
      echo "(${branch}${state})"
    fi
  fi
}

get_pwd() {
  # For full path
  echo "${PWD/$HOME/~}"
  # echo "${PWD##*/}"
}
