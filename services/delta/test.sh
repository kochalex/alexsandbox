#!/usr/bin/env bash
set -euo pipefail

# CI simulation: this required test intentionally fails and must block the final gate.
echo "[delta] required tests: intentionally failing; the gate should fail"
exit 1
