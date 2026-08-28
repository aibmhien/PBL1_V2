# PBL Manager V0.4.3 - Unified Admin

Bộ cài hoàn chỉnh để tạo repository GitHub mới và deploy Render từ đầu.

## Chức năng
- Phân công tự động theo thứ tự 1-2, 3-4... và mã đề I-V/1-5/DA1-DA5.
- Phân công thủ công và phân đề ngẫu nhiên tùy chọn.
- Kế hoạch chung toàn lớp, thời gian bắt đầu/hạn nộp, kích hoạt cho tất cả nhóm.
- Cổng sinh viên: xem đề, nộp DOCX/XLS/XLSX/DWG/DXF.
- Reviewer/đồng nghiệp: xem, theo dõi, tải bài, chấm và nhận xét; không sửa đề/cấu hình/phân công.
- Kho tài liệu/link tham khảo.
- Điểm danh QR và điểm chuyên cần.
- Backup/Restore ZIP.
- In đề A4; chạy local hoặc Render.

## Cài GitHub + Render
Đọc `INSTALL_GITHUB_RENDER_FROM_SCRATCH.md`.

## Chạy local
Windows: chạy `run_windows.bat`.

Mac/Linux:
```bash
bash run_macos_linux.sh
```

Mặc định local nếu chưa đặt biến môi trường: mật khẩu admin là `pbl123`. Khi chạy Render bắt buộc nên đặt `PBL_ADMIN_PASSWORD` riêng.


## V0.4.3
- Gộp Phân công + Cấu hình + Đồng nghiệp thành tab Quản trị.
- Thêm xóa tài khoản đồng nghiệp.
- Sửa đăng xuất/đổi tài khoản để reviewer có thể thoát và đăng nhập admin ngay.
- Header: TS. Bùi Minh Hiển - DUT-V.2.
