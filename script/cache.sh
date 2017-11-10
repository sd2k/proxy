#!/usr/bin/env bash

PROJECT_ID=${PROJECT_ID:-istio-costin}

if [ "$1" == "save" ]; then
  tar cfz bazel_cache.tgz ${HOME}/.cache/bazel
elif [ "$1" == "restore" ]; then
  gsutil cp gs://$PROJECT_ID/proxy_cache bazel_cache.tgz
  if [ -f bazel_cache.tgz ]; then
    tar xfz bazel_cache.tgz ${HOME}/.cache/bazel
  fi
fi