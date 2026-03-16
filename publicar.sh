#!/bin/bash
# Compila las presentaciones y las copia al directorio de visualización.
# Uso: bash publicar.sh

SRC="/Users/alejandrochain/Documents/github/inferencia_estadistica_unne/2026/guia_1"
DST="/Users/alejandrochain/Documents/github/inferencia_estadistica_unne/2026/visualizacion/guia_1"

echo "→ Renderizando tema_1_ie_unne.qmd..."

# Renderiza con embed-resources y sin chalkboard (perfil de publicación)
quarto render "$SRC/tema_1_ie_unne.qmd" \
  --output-dir "$DST" \
  -M chalkboard:false \
  -M embed-resources:true

# Copia el logo y el CSS por si el embed no los incluye
cp "$SRC/logo_unne.png" "$DST/"
cp "$SRC/styles.css"    "$DST/"

echo "✓ Listo. Archivos en: $DST"
echo ""
echo "Próximos pasos:"
echo "  1. cd visualizacion"
echo "  2. git add . && git commit -m 'actualizar presentaciones'"
echo "  3. git push"
