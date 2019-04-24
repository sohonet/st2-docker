#!/bin/bash

grep github.com ~/.ssh/known_hosts || ssh-keyscan github.com >> ~/.ssh/known_hosts
