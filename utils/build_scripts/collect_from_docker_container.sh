set -ex && mkdir -p build/release/bin
set -ex && docker create --name vaizon-daemon-container vaizon-daemon-image
set -ex && docker cp vaizon-daemon-container:/usr/local/bin/ build/release/
set -ex && docker rm vaizon-daemon-container
