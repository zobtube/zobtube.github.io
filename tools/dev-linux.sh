#!/bin/bash

set -e

exec hugo server --noHTTPCache --ignoreCache -w
