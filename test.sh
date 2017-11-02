#!/usr/bin/env bash
# Exit on first error, unset variable, or pipe failure
set -euo pipefail

# Run our linter and tests
set +u
if test "$SKIP_LINT" != "TRUE"; then
  # Linter pending...
  true
fi
set -u
bin/rspec
