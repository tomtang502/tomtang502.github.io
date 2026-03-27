#!/bin/bash

# Save original env
ORIG_PATH="$PATH"
ORIG_RBENV_ROOT="${RBENV_ROOT:-}"

# Set up rbenv for this session
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH"

# Restore env on exit (Ctrl+C or normal exit)
cleanup() {
    export PATH="$ORIG_PATH"
    if [ -z "$ORIG_RBENV_ROOT" ]; then
        unset RBENV_ROOT
    else
        export RBENV_ROOT="$ORIG_RBENV_ROOT"
    fi
    echo ""
    echo "Environment restored."
    exit 0
}
trap cleanup INT TERM EXIT

# Check if rbenv is available
if ! command -v rbenv &> /dev/null; then
    echo "rbenv not found. Install it with: brew install rbenv ruby-build"
    exit 1
fi

# Use Ruby 3.3.6
eval "$(rbenv init - bash)"
rbenv shell 3.3.6

echo "Using Ruby: $(ruby --version)"

# Serve the site
echo "Starting Jekyll server at http://localhost:11868"
bundle exec jekyll serve --port 11868
