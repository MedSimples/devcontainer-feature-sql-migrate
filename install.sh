#!/bin/bash
#!/usr/bin/env bash

CGO_ENABLED=0
GOOS=linux 

set -ex

go install -a -ldflags '-extldflags "-static"' github.com/rubenv/sql-migrate/...@latest
