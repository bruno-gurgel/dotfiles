#!/usr/bin/env bash
set -e

IMAGE="dotfiles-ansible-test"

echo "==> Building test image..."
docker build -f Dockerfile.test -t "$IMAGE" .

echo "==> Running playbook in container..."
docker run --rm "$IMAGE"

echo "==> Done."
