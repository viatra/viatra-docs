#!/bin/bash

bundle exec rake doc:clean
bundle exec rake doc:prebuild
bundle exec rake doc:build
