@echo off
echo ======================================================
echo 🔍 Checking full project structure and Git status...
echo ======================================================
echo.

REM 1️⃣ Check Python environment
echo 🐍 Checking Python version:
python --version
echo.

REM 2️⃣ List key files and folders
echo 📂 Checking main files:
if exist main.py (echo ✅ main.py found) else (echo ❌ main.py missing)
if exist README.md (echo ✅ README.md found) else (echo ❌ README.md missing)
if exist .gitignore (echo ✅ .gitignore found) else (echo ❌ .gitignore missing)
if exist utils.py (echo ✅ utils.py found) else (echo ❌ utils.py missing)
if exist setup.bat (echo ✅ setup.bat found) else (echo ⚠️ setup.bat missing)
echo.

REM 3️⃣ List folder contents
echo 📁 Checking folders and their contents:

if exist modules (
    echo ✅ modules/ folder found, contents:
    dir /b modules
) else (
    echo ❌ modules folder missing
)

if exist tests (
    echo ✅ tests/ folder found, contents:
    dir /b tests
) else (
    echo ❌ tests folder missing
)

echo.

REM 4️⃣ Show untracked or changed files
echo 🔄 Checking Git status:
git status
echo.

REM 5️⃣ Show last 5 commits
echo 🧾 Recent commits:
git log --oneline -5
echo.

REM 6️⃣ Verify branch name
echo 🌿 Current branch:
git branch
echo.

echo ======================================================
echo ✅ Full project status check completed!
echo ======================================================
pause