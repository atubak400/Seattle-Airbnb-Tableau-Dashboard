#!/usr/bin/env bash
set -euo pipefail

# Project folder name (change if you want)
PROJECT_NAME="seattle-airbnb-tableau-dashboard"

# Create root folder
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Core folders
mkdir -p \
  data/raw \
  data/processed \
  tableau/workbook \
  tableau/exports \
  tableau/screenshots \
  docs \
  sql \
  notes \
  assets/icons

# Starter files
cat > README.md <<'EOF'
# Seattle Airbnb Tableau Dashboard (Beginner Project)

## Goal
Recreate the beginner Tableau project using the Seattle Airbnb dataset and build a dashboard with:
- Avg Price by Zip Code (bar)
- Price by Zip Code (map)
- Revenue over Time (weekly line for 2016)
- Avg Price per Bedroom (bar)
- Count of Listings per Bedroom (bar)

## Folder guide
- data/raw: original dataset files (CSV, Excel)
- data/processed: cleaned or combined datasets used in Tableau
- tableau/workbook: Tableau workbook files (.twb / .twbx)
- tableau/exports: exported images/PDFs from Tableau
- tableau/screenshots: screenshots for portfolio and README
- docs: documentation (steps, notes, writeups)
- sql: any SQL used for cleaning or checks
- notes: quick notes during the build

## Next step
Put your dataset in data/raw, then create your combined file in data/processed.
EOF

cat > docs/steps.md <<'EOF'
# Build Steps (Fill in as you go)

## 1) Data setup
- Source:
- Files added:
- Combined file name:

## 2) Tableau data model
- Tables used:
- Join keys:
- Filters (ex: only 2016):

## 3) Visuals
1. Avg Price by Zip Code
2. Map: Price by Zip Code
3. Revenue over Time (weekly)
4. Avg Price by Bedroom
5. Count of Listings by Bedroom

## 4) Dashboard
- Layout notes:
- Filters / interactions:
- Exports:
EOF

cat > notes/todo.md <<'EOF'
# To Do
- Download dataset
- Put raw files into data/raw
- Create combined dataset in data/processed
- Build Tableau workbook
- Export dashboard images into tableau/exports
- Add screenshots into tableau/screenshots
- Update README with final images and summary
EOF

# Helpful .gitignore
cat > .gitignore <<'EOF'
# OS
.DS_Store

# Data (optional: keep raw, ignore large processed)
data/processed/*.csv
data/processed/*.xlsx

# Tableau extracts, temp, packaged workbooks
*.hyper
*.tde
*.twb~
*.twbx~

# Exports (optional)
tableau/exports/*.pdf
tableau/exports/*.png
EOF

echo "Done. Project structure created in: $PROJECT_NAME"
