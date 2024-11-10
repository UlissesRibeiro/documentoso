#!/bin/bash
# Script para gerar documentação em Markdown a partir de scripts Shell

output="DOCUMENTATION.md"
echo "# Documentação dos Scripts" > "$output"

for script in *.sh; do
  # Ignora o script generate_docs.sh
  if [[ "$script" == "generate_docs.sh" ]]; then
    continue
  fi

  echo "## $(basename "$script")" >> "$output"
  grep '^#' "$script" | sed 's/^# //' >> "$output"
  echo -e "\n---\n" >> "$output"
done

echo "Documentação gerada em $output."
