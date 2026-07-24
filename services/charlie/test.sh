#!/usr/bin/env bash
set -euo pipefail

# CI simulation: this optional test intentionally fails and must not block the final gate.
echo "[charlie] optional tests: intentionally failing; the gate should still pass"
exit 1
