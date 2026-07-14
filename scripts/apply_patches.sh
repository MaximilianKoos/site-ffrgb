#!/usr/bin/env bash
set -euo pipefail

BUILD_DIR="${1:-}"
PATCH_DIR="${2:-./patches}"

if [[ -z "${BUILD_DIR}" ]]; then
  echo "Usage: $0 <build-dir> [patch-dir]"
  exit 1
fi

PATCH_DIR="$(realpath "${PATCH_DIR}")"

echo "Setting patch directory to ${PATCH_DIR}"

if [[ ! -d "${BUILD_DIR}" ]]; then
  echo "Build directory does not exist: ${BUILD_DIR}"
  exit 1
fi

if [[ ! -d "${PATCH_DIR}" ]]; then
  echo "Patch directory does not exist: ${PATCH_DIR} - skipping patch step."
  exit 0
fi

shopt -s nullglob
PATCHES=( "${PATCH_DIR}"/*.patch )
shopt -u nullglob

if [[ ${#PATCHES[@]} -eq 0 ]]; then
  echo "No patches found in ${PATCH_DIR}, skipping patch step."
  exit 0
fi

pushd "${BUILD_DIR}" >/dev/null

for patch in "${PATCHES[@]}"; do
  echo "Applying patch: ${patch}"
  patch -p1 < "${patch}"
done

popd >/dev/null

echo "All patches applied successfully."
