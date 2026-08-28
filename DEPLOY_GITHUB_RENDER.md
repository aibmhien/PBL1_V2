# Triển khai PBL Manager V0.4.0 từ GitHub lên Render

1. Tạo repository GitHub, ví dụ `pbl-manager`.
2. Upload toàn bộ file của V0.4.0 vào thư mục gốc repository.
3. Đảm bảo repository có `app.py`, `requirements.txt`, `render.yaml`, `templates/`, `static/`, `demo/`.
4. Trên Render, chọn **New > Blueprint**.
5. Kết nối GitHub và chọn repository vừa tạo.
6. Render sẽ đọc `render.yaml`.
7. Nhập giá trị bí mật cho biến `PBL_ADMIN_PASSWORD` khi được yêu cầu.
8. Deploy.
9. Sau khi trạng thái là Live, mở URL do Render cấp.
10. Chia URL `/student` cho sinh viên; URL gốc `/` dành cho giảng viên và sẽ yêu cầu mật khẩu.

## Ghi chú

- `127.0.0.1` chỉ hoạt động trên chính máy đang chạy ứng dụng.
- GitHub Pages không chạy backend FastAPI.
- Khi deploy công khai, nên đổi mật khẩu mặc định và không chia link trang quản trị cho sinh viên.
- Bản V0.3 dùng SQLite + thư mục file. Khi quy mô lớn hơn hoặc nhiều giảng viên cùng dùng, nên chuyển sang PostgreSQL + object storage.
