@echo off
cls
echo ===============================
echo 🔧 FULL CLEAN REBUILD STARTED
echo ===============================

:: مسیر پروژه
cd /d C:\Users\LOQ-15IRX9\myproject

:: حذف فایل‌ها و پوشه‌های اضافی
echo.
echo 🧹 Cleaning old files...
del /f /q "README.md" >nul 2>&1
del /f /q ".gitignore" >nul 2>&1
del /f /q "verified" >nul 2>&1
del /f /q "sional structure" >nul 2>&1
del /f /q "cripts and folders created" >nul 2>&1
del /f /q "teps done! Check GitHub*" >nul 2>&1
del /f /q "" >nul 2>&1

rd /s /q "modules" >nul 2>&1
rd /s /q "tests" >nul 2>&1
del /f /q "main.py" >nul 2>&1
del /f /q "utils.py" >nul 2>&1

echo ✅ Cleanup complete.
echo.

:: ---------- ساخت README.md ----------
echo 📝 Creating README.md...
(
echo # My First Project
echo.
echo This is a Python practice project aimed at learning Git and GitHub, managing real projects with virtual environments, and making professional commits.
echo.
echo ---
echo.
echo ## Technologies
echo - Python 3.14 – main language used for scripts and program logic
echo - Virtual environment (venv) – to manage packages and create an isolated environment
echo - Requests – for working with APIs (installation: pip install requests)
echo - Pretty Print – to display outputs nicely and clearly
echo.
echo ---
echo.
echo ## Execution
echo 1. Check Python version:
echo    python --version
echo 2. Clone the repository:
echo    git clone https://github.com/Mmpy-dev/my-first-project.git
echo 3. Go to the project folder:
echo    cd my-first-project
echo 4. Activate the virtual environment:
echo    python -m venv venv
echo    venv\Scripts\activate   ^# Windows
echo    source venv/bin/activate ^# macOS / Linux
echo 5. Install required packages:
echo    pip install -r requirements.txt
echo 6. Run the Python file:
echo    python main.py
echo.
echo ---
echo.
echo ## Professional Notes
echo - Apply experimental changes on a separate branch: git checkout -b feature-branch
echo - Keeping commits organized and descriptive helps maintain a clean project history
echo.
echo ---
echo.
echo ## About Me
echo I am Mmpy, interested in Python and AI. This project is my first step towards building real-world projects on GitHub, practicing secure commits, branch management, and professional pushes.
) > README.md
echo ✅ README.md created.
echo.

:: ---------- ساخت .gitignore ----------
echo 🧾 Creating .gitignore...
(
echo venv/
echo __pycache__/
echo *.pyc
echo *.pyo
echo *.pyd
echo *.swp
echo .Python
echo env/
echo build/
echo dist/
echo *.egg-info/
echo .vscode/
) > .gitignore
echo ✅ .gitignore created.
echo.

:: ---------- ساختار پوشه‌ها ----------
echo 📁 Creating folder structure...
mkdir modules
mkdir tests
echo ✅ Folders created.
echo.

:: ---------- فایل‌های Python ----------
echo 🐍 Creating Python scripts...
(
echo """Main Python script for the project"""
echo
echo def main():
echo     """Main function execution"""
echo     print("Hello, this is the main script!")
echo
echo if __name__ == "__main__":
echo     main()
) > main.py

(
echo """Utility functions for the project"""
echo
echo def add(a, b):
echo     """Return sum of two numbers"""
echo     return a + b
) > utils.py

(
echo # modules package
) > modules\__init__.py

(
echo """Helper functions module"""
echo
echo def greet(name):
echo     print(f"Hello, {name}!")
) > modules\helper.py

(
echo """Unit tests for main.py"""
echo
echo def test_add():
echo     from utils import add
echo     assert add(2, 3) == 5
) > tests\test_main.py

echo ✅ Python files created.
echo.

:: ---------- Git مراحل ----------
echo 🌿 Creating and pushing feature branch...
git checkout -b feature-clean-rebuild
git add .
git commit -m "Rebuild clean professional project structure"
git push -u origin feature-clean-rebuild

echo.
echo ===============================
echo ✅ ALL DONE SUCCESSFULLY!
echo ===============================
echo.
pause