#!/bin/zsh
export GOPATH=${HOME}/.go
export PATH=${HOME}/l/bin:$(go env GOPATH)/bin:${PATH}
