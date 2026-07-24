#!/usr/bin/env bash
set -euo pipefail

# CI simulation: this optional build should pass and must not block the final gate.
echo "[echo] optional build: expected to pass"
exit 0
