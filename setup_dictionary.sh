#!/bin/bash

# Old Slavic IT Dictionary — setup script
# Creates words/A.md through words/Z.md

mkdir -p words

for letter in {A..Z}; do
  FILE="words/${letter}.md"
  cat > "$FILE" << MDEOF
# ${letter}

> Слова древнеславянского IT-словаря на букву **${letter}**

---

| Современный термин | Древнеславянский аналог | Толкование | Автор |
|---|---|---|---|
| | | | |

---

*Хочешь добавить слово? Смотри [CONTRIBUTING.md](../CONTRIBUTING.md)*
MDEOF
  echo "✅ Создан: $FILE"
done

echo ""
echo "📜 Все файлы созданы в папке words/"
