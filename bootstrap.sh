#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
codex_dir="${CODEX_HOME:-$HOME/.codex}"
skill_dir="$HOME/.agents/skills"

[[ -f "$repo_dir/AGENTS.md" ]] || { printf '%s\n' 'Missing AGENTS.md' >&2; exit 1; }
[[ -d "$repo_dir/.codex/agents" ]] || { printf '%s\n' 'Missing custom agents' >&2; exit 1; }
[[ -d "$repo_dir/.agents/skills" ]] || { printf '%s\n' 'Missing skills' >&2; exit 1; }

mkdir -p "$codex_dir/agents" "$skill_dir"
cp "$repo_dir/AGENTS.md" "$codex_dir/AGENTS.md"
cp "$repo_dir/.codex/agents/"*.toml "$codex_dir/agents/"
cp -a "$repo_dir/.agents/skills/." "$skill_dir/"

if [[ ! -e "$codex_dir/config.toml" ]]; then
  cp "$repo_dir/.codex/config.toml" "$codex_dir/config.toml"
fi

printf '%s\n' 'Omni installed. Restart Codex CLI.'
