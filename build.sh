if [ -z "$1" ]
then
  echo "Elixir version is required"
  echo "ex: build.sh 1.11.2-otp-23"
  exit
fi

docker build -t "hermanverschooten/elixir:$1" $1
docker build -t "hermanverschooten/elixir:$1-node" "$1-node"
docker push "hermanverschooten/elixir:$1"
docker push "hermanverschooten/elixir:$1-node"

docker build -t "hermanverschooten/elixir:$1-ubuntu-20.04" "$1-ubuntu-20.04"
docker build -t "hermanverschooten/elixir:$1-node-ubuntu-20.04" "$1-node-ubuntu-20.04"

docker push "hermanverschooten/elixir:$1-ubuntu-20.04"
docker push "hermanverschooten/elixir:$1-node-ubuntu-20.04"
