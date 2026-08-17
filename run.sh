#!/bin/bash
# ============================================================
# Java First - Student Management System Runner (Linux/macOS)
# ============================================================

# Ensure bin directory exists
mkdir -p bin

# Compile Java sources
echo "Compiling Java files..."
javac -d bin src/*.java

if [ $? -eq 0 ]; then
    echo "Compilation successful! Launching application..."
    echo "-------------------------------------------------"
    java -cp bin Main
else
    echo "[ERROR] Compilation failed. Please check your JDK setup."
fi
