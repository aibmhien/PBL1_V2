@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================
echo PBL Manager V0.4.0 - Windows
echo ========================================
echo Dang cai/cap nhat cac thu vien Python...
python -m pip install -r requirements.txt
if errorlevel 1 (
  echo.
  echo Khong cai duoc thu vien. Hay kiem tra Python va ket noi Internet.
  pause
  exit /b 1
)
echo.
echo Dia chi tren may nay: http://127.0.0.1:5000
echo Cong sinh vien:       http://127.0.0.1:5000/student
echo.
echo De may khac trong cung Wi-Fi/LAN truy cap, dung DIA CHI IPv4 cua may giang vien, vi du:
echo http://192.168.1.20:5000/student
echo Neu khong truy cap duoc, can cho phep Python/port 5000 qua Windows Firewall.
echo.
echo Mat khau giang vien mac dinh: pbl123
echo Co the doi bang bien moi truong PBL_ADMIN_PASSWORD truoc khi chay.
echo Khong dong cua so nay khi dang su dung website.
python app.py
pause
