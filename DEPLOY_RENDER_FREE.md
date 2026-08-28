# Deploy V0.4.0 lên Render Free

## Vì sao V0.4.0 không tạo được Render Free?
`render.yaml` của V0.4.0 có khai báo persistent disk `/var/data`. Render chỉ cho gắn persistent disk vào web service trả phí, nên Blueprint đó không phù hợp với Free.

## Cấu hình V0.4.0
- Python 3.12 (qua `.python-version`)
- Render Web Service: `plan: free`
- Không gắn persistent disk
- Start command: `uvicorn app:app --host 0.0.0.0 --port $PORT`
- Biến bí mật cần nhập trên Render: `PBL_ADMIN_PASSWORD`

## Cách deploy
1. Giải nén gói này.
2. Đưa **các file bên trong thư mục** lên root của repository GitHub. `app.py` và `render.yaml` phải nằm ngay ở trang đầu repository.
3. Trên Render: New > Blueprint.
4. Chọn repository.
5. Render đọc `render.yaml`.
6. Nhập `PBL_ADMIN_PASSWORD` khi được hỏi.
7. Apply/Deploy Blueprint.
8. Khi service Live, mở URL Render. Cổng sinh viên là `<URL>/student`.

## Lưu ý về dữ liệu
Bản Free dùng filesystem tạm thời. Dữ liệu SQLite và file sinh viên upload có thể mất khi service restart, redeploy hoặc spin down. V0.4.0 Free chỉ nên dùng để thử nghiệm online. Phiên bản dùng chính thức cần database/storage bền vững.

## GitHub Pages
Không dùng GitHub Pages cho ứng dụng này. GitHub Pages chỉ host nội dung tĩnh và không chạy FastAPI/Python backend. Repository có thể Public hoặc Private tùy quyền kết nối Render; Pages không phải bước cần thiết.
