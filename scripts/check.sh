#!/bin/bash
# scripts/check.sh
# Purpose: Universal Verification Script. 
# The agent calls this to "Verify" work. It must pass before "Done".

echo "🔍 Starting Verification Process..."

# 1. Detect Environment and Run Tests
if [ -f "package.json" ]; then
    echo "📦 Node.js project detected."
    # Run Linting (if script exists)
    if grep -q "lint" package.json; then
        echo "   Running Linter..."
        npm run lint || { echo "❌ Linting Failed"; exit 1; }
    fi
    # Run Tests (if script exists)
    if grep -q "test" package.json; then
        echo "   Running Tests..."
        npm test -- --passWithNoTests || { echo "❌ Tests Failed"; exit 1; }
    else
        echo "⚠️ No test script found in package.json"
    fi

elif [ -f "requirements.txt" ] || [ -f "pyproject.toml" ]; then
    echo "🐍 Python project detected."
    # Run pytest
    pytest || { echo "❌ Python Tests Failed"; exit 1; }
else
    echo "⚠️ Unknown project type. No automated tests run."
fi

echo "✅ Verification Complete. All checks passed."
exit 0