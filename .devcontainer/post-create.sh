#!/bin/bash

npm install -g @anthropic-ai/claude-code
npm install -g prettier
npm install -g baedal

if [ -f /workspaces/template-repository/.env ]; then
  grep -v '^#' /workspaces/template-repository/.env | sed 's/^/export /' >> ~/.bashrc
fi
