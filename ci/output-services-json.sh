#!/usr/bin/env bash

set -eu
set -o pipefail

cd "$(dirname "$0")/.."

changed_files=$1
labels_file=$2

main() {
  while IFS= read -r service_dir; do
    # https://github.com/suzuki-shunsuke/matchfile
    # output "true" or "false"
    matched=$(matchfile run "$changed_files" <(echo "dir $service_dir"))
    if [ "$matched" = "true" ]; then
      echo "$service_dir"
    fi
  done < <(git ls-files | grep -E "main\.go$" | xargs dirname)

  # Pull Request "target/*" label (ex. "target/foo")
  # By setting labels, we can run jobs even if related files aren't updated in the pull request.
  if grep -E "^target/" "$labels_file" > /dev/null 2>&1; then
    grep -E "^target/" "$labels_file" | sed "s|^target/||"
  fi
}

# convert lines into a JSON list with jq
# https://stackoverflow.com/a/28006220
main | sort -u | jq -R -s -c 'split("\n")[:-1]'
