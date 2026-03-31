#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage:"
  echo "  ./scripts/install.sh list"
  echo "  ./scripts/install.sh <skill-name>|all [target-dir]"
}

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"
source_root="${repo_root}/skills"
target_root="${2:-${CODEX_HOME:-$HOME/.codex}/skills}"

if [[ $# -lt 1 ]]; then
  usage
  exit 1
fi

command_name="$1"

if [[ ! -d "${source_root}" ]]; then
  echo "Missing skills directory: ${source_root}" >&2
  exit 1
fi

mkdir -p "${target_root}"

list_skills() {
  find "${source_root}" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort
}

link_skill() {
  local skill_name="$1"
  local source_path="${source_root}/${skill_name}"
  local target_path="${target_root}/${skill_name}"

  if [[ ! -d "${source_path}" ]]; then
    echo "Unknown skill: ${skill_name}" >&2
    return 1
  fi

  if [[ -e "${target_path}" && ! -L "${target_path}" ]]; then
    echo "Refusing to overwrite non-symlink path: ${target_path}" >&2
    return 1
  fi

  ln -sfn "${source_path}" "${target_path}"
  echo "Installed ${skill_name} -> ${target_path}"
}

case "${command_name}" in
  list)
    list_skills
    ;;
  all)
    while IFS= read -r skill_name; do
      link_skill "${skill_name}"
    done < <(list_skills)
    ;;
  *)
    link_skill "${command_name}"
    ;;
esac
