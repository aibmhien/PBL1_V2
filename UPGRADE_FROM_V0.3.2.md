# Nâng cấp PBL Manager V0.3.2 -> V0.4.1 Unified

V0.4.1 hợp nhất **toàn bộ tính năng V0.4.0** vào nhánh V0.3.2 hiện hành, đồng thời giữ các chức năng mới của V0.3.2: phân công tự động theo thứ tự/cột Đề, phân công thủ công và kế hoạch chung toàn lớp.

## Trước khi cập nhật

Nếu website hiện tại có dữ liệu thật, nên sao lưu `data/pbl.db`, thư mục `data/submissions/` và các template Word. Nếu hệ thống cũ đã có chức năng Backup, tải Backup ZIP trước khi cập nhật.

## Cập nhật GitHub/Render

1. Giải nén gói V0.4.1.
2. Upload/ghi đè các file vào **thư mục gốc** repository `PBL-Manager`.
3. Không cần tạo GitHub Pages.
4. Render đang kết nối repository sẽ tự deploy khi branch `main` thay đổi.
5. Giữ nguyên biến môi trường `PBL_ADMIN_PASSWORD` hiện tại trên Render.
6. Sau deploy, kiểm tra `/`, `/admin/groups`, `/admin/plan`, `/admin/reviewers`, `/admin/attendance`, `/materials`, `/student`.

## Migration dữ liệu

Khi khởi động, V0.4.1 chỉ bổ sung các bảng/cột còn thiếu: tài khoản reviewer, tài liệu, điểm danh, lịch sử đánh giá và các trường kế hoạch chung. Không chủ động xóa phân công hiện có.

Lưu ý: thao tác **Cập nhật phân công tự động** là thao tác có chủ ý tạo lại nhóm theo thứ tự 1-2, 3-4,... và cột Đề I-V. Chỉ bấm khi muốn áp dụng lại phân công từ danh sách Excel hiện hành.

## Các tính năng hợp nhất

- Tự động phân công theo thứ tự danh sách + mã Đề I-V/1-5.
- Phân công thủ công.
- Phân đề ngẫu nhiên tùy chọn khi danh sách không có cột Đề.
- Kế hoạch chung toàn lớp: thời gian bắt đầu, hạn nộp, kích hoạt/đóng cho tất cả nhóm.
- Reviewer/đồng nghiệp: tài khoản riêng, xem/theo dõi/tải bài/chấm điểm/nhận xét; không sửa đề, nhóm, dữ liệu hay cấu hình.
- Kho tài liệu và link cho sinh viên.
- Điểm danh QR + điểm chuyên cần thang 10.
- Lịch sử đánh giá theo người chấm.
- Backup/Restore ZIP.
- Cổng sinh viên nộp DOCX, XLS/XLSX, DWG/DXF theo mốc đang mở.
