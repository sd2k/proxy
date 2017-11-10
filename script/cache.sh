#!/usr/bin/env bash

if [ "$1" == "save" ]; then
  tar cfz bazel_cache.tgz ${HOME}/.cache/bazel
elif [ "$1" == "restore" ]; then
  if [ -f bazel_cache.tgz ]; then
    tar xfz bazel_cache.tgz ${HOME}/.cache/bazel
  fi
fi