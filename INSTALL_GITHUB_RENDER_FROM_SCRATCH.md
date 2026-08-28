# PBL Manager V0.4.2 - Cài mới GitHub + Render từ đầu

## 1. Không dùng GitHub Pages
PBL Manager là FastAPI/Python, vì vậy GitHub chỉ dùng để lưu mã nguồn. Website thật chạy trên Render.

## 2. Chuẩn bị GitHub
Khuyến nghị dùng GitHub Desktop để tránh mất các thư mục con khi upload bằng trình duyệt.

1. Cài GitHub Desktop và đăng nhập.
2. GitHub.com -> New repository -> tên `PBL-Manager` -> Public hoặc Private -> Create repository.
3. GitHub Desktop -> File -> Clone repository -> chọn repository vừa tạo.
4. Giải nén gói V0.4.2 này.
5. Copy TOÀN BỘ nội dung bên trong thư mục giải nén vào thư mục repository local.
6. Trong GitHub Desktop phải thấy thay đổi ở `app.py`, `templates/...`, `static/...`, `demo/...`, `render.yaml`.
7. Summary: `Initial PBL Manager V0.4.2` -> Commit to main -> Push origin.

## 3. Kiểm tra GitHub trước khi Render
Ở trang root repository phải nhìn thấy tối thiểu:
- `app.py`
- `render.yaml`
- `requirements.txt`
- `.python-version`
- `templates/`
- `static/`
- `demo/`
- `data/`

Nếu không thấy `templates/` hoặc `static/`, KHÔNG deploy Render.

## 4. Tạo Render từ đầu bằng Blueprint
1. Đăng nhập https://dashboard.render.com bằng GitHub.
2. New + -> Blueprint.
3. Connect repository `PBL-Manager`.
4. Render đọc `render.yaml` và tạo web service `pbl-manager-v042`.
5. Khi được hỏi `PBL_ADMIN_PASSWORD`, nhập mật khẩu quản trị riêng.
6. Apply/Deploy Blueprint.
7. Chờ trạng thái Live.

Render sẽ tự tạo `PBL_AUTH_SECRET`; không đưa secret vào GitHub.

## 5. Kiểm tra sau deploy
- Health: `https://<ten-service>.onrender.com/healthz` phải trả `{"status":"ok"}`.
- Giảng viên: `https://<ten-service>.onrender.com/`
- Sinh viên: `https://<ten-service>.onrender.com/student`
- Username quản trị: `admin`
- Password: giá trị đã nhập ở `PBL_ADMIN_PASSWORD`.

## 6. Nếu Render lỗi
Mở service -> Events -> deploy lỗi -> Logs. Gửi 20-30 dòng cuối log. Không cần tạo GitHub Pages.

## 7. Lưu ý Render Free
Filesystem của Render Free không phải nơi lưu dữ liệu bền vững. Trước khi dùng chính thức lâu dài, nên chuyển database/file nộp sang dịch vụ lưu trữ bền vững. Trong giai đoạn thử nghiệm, dùng chức năng Backup ZIP thường xuyên.
