# Variables
# ------------------------------------------------------------------------------
IMAGE_ID=dekalabs/nginx
CHANNELS_IMAGE_ID=dekalabs/nginx-channels

# Channels
# ------------------------------------------------------------------------------
build_channels:
	docker build . -f Dockerfile.channels --tag ${CHANNELS_IMAGE_ID}

push_channels: build_channels
	docker push ${CHANNELS_IMAGE_ID}:latest

# Default
# ------------------------------------------------------------------------------
build:
	docker build . -f Dockerfile --tag ${IMAGE_ID}

push: build
	docker push ${IMAGE_ID}:latest
