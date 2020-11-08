if [ -z "$1" ]
then
  echo "Elixir version is required"
  echo "ex: build.sh 1.11.2-otp-23"
  exit
fi

VERSION=$1

generate() {

mkdir -p "$VERSION$1"
sed "s/ELIXIR_VERSION/1.11.2-otp-23/g" "templates/elixir$1" > "$VERSION$1/Dockerfile"
docker build -t "hermanverschooten/elixir:$VERSION$1" $VERSION$1
docker push "hermanverschooten/elixir:$VERSION$1"
}

generate
generate "-node"
generate "-ubuntu-20.04"
generate "-node-ubuntu-20.04"

# docker build -t "hermanverschooten/elixir:$VERSION-node" "$VERSION-node"
# docker push "hermanverschooten/elixir:$VERSION-node"

# docker build -t "hermanverschooten/elixir:$VERSION-ubuntu-20.04" "$VERSION-ubuntu-20.04"
# docker build -t "hermanverschooten/elixir:$VERSION-node-ubuntu-20.04" "$VERSION-node-ubuntu-20.04"

# docker push "hermanverschooten/elixir:$VERSION-ubuntu-20.04"
# docker push "hermanverschooten/elixir:$VERSION-node-ubuntu-20.04"
