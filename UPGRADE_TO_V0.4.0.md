# Nâng cấp từ V0.3.1 lên V0.4.0

## Dữ liệu nào được giữ

V0.4.0 dùng migration kiểu bổ sung (`CREATE TABLE IF NOT EXISTS`) nên database V0.3.1 có thể mở trực tiếp. Các bảng sinh viên, nhóm, mã đề, số liệu, tiến độ và submissions không bị xóa khi ứng dụng khởi động.

Nếu chạy trên Windows/local:
1. Dừng V0.3.1.
2. Sao chép thư mục `data/` của V0.3.1 sang V0.4.0 (đặc biệt `data/pbl.db` và `data/submissions/`).
3. Chạy V0.4.0. Hệ thống tự tạo thêm các bảng mới.
4. Vào Cấu hình và tải một Backup ZIP ngay sau khi xác nhận dữ liệu đúng.

Nếu đang thử nghiệm trên Render Free:
- Dữ liệu ghi trực tiếp lên filesystem của service có thể mất khi redeploy/restart.
- Nếu các phân công quan trọng chỉ tồn tại trên Render V0.3.1 mà không có bản local tương ứng, không nên coi đó là nơi lưu bản gốc.
- Từ V0.4.0 trở đi hãy tạo Backup ZIP trước mỗi lần nâng cấp và lưu backup về máy/GDrive/OneDrive.

## Quy trình nâng cấp từ V0.4.0 trở đi

1. `Cấu hình -> Tải Backup .ZIP`.
2. Cập nhật mã nguồn trên GitHub.
3. Chờ Render deploy xong.
4. Kiểm tra nhóm/đề/điểm.
5. Nếu dữ liệu mất hoặc service được tạo mới: `Cấu hình -> Khôi phục Backup`.

## Khuyến nghị production

Khi dùng cho lớp chính thức, nên chuyển SQLite sang PostgreSQL/Supabase và file submissions/materials sang object storage (S3/R2/OneDrive/Google Drive). Khi đó việc deploy phiên bản mới không làm ảnh hưởng dữ liệu.
