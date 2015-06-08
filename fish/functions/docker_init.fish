function docker_init
  for docker_env in (boot2docker shellinit 2> /dev/null)
    if which gsed > /dev/null
      eval (echo $docker_env | gsed 's/set -x/setenv/g')
    else
      eval (echo $docker_env | sed 's/set -x/setenv/g')
    end
  end
end
