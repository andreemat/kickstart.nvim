#!/bin/bash

BIN="$HOME/.local/bin"
YANK="$BIN/win32yank.exe"

# Crea la cartella se non esiste
mkdir -p "$BIN"

# Scarica win32yank se non esiste
if [ ! -f "$YANK" ]; then
  echo "Scarico win32yank.exe..."
  curl -Lo "$YANK" https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank.exe
  chmod +x "$YANK"
else
  echo "win32yank.exe già presente in $BIN"
fi

# Testa se funziona
echo "Test clipboard: 'Ciao da WSL' -> Windows clipboard"
echo "Ciao da WSL" | "$YANK" -i

