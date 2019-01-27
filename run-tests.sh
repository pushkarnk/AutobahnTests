SWIFT_VERSION=$1
UBUNTU_VERSION=$2
DOCKERFILE_PATH=""

git clone https://github.com/apple/swift-docker

if [ $SWIFT_VERSION == "4.2" ]; then
  DOCKERFILE_PATH="swift-docker/$SWIFT_VERSION/Ubuntu/$UBUNTU_VERSION"
else
  DOCKERFILE_PATH="swift-docker/$SWIFT_VERSION"
fi

OS_DOT_SWIFT="${UBUNTU_VERSION}.${SWIFT_VERSION}"
TAG="ubuntu:${OS_DOT_SWIFT}"
docker build -t $TAG $DOCKERFILE_PATH

docker build -t autobahn:$OS_DOT_SWIFT --build-arg TAG=$TAG .

docker run -v `pwd`:/AutobahnTests -t autobahn:$OS_DOT_SWIFT

echo "\n\n\nFinished autobahn testing with Swift $SWIFT_VERSION on Ubuntu $UBUNTU_VERSION".
echo "\nIssue \"open reports/servers/index.html\" to view results."
