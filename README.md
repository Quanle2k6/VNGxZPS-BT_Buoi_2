# VNGxZPS Course - Week 2: SpotLight3D Research & Demo

Tài liệu ghi lại kết quả tìm hiểu và nghiên cứu về node **SpotLight3D** trong **Godot Engine 4** phục vụ cho bài tập tuần 2.

## 1. Khái niệm

**SpotLight3D** là một dạng node thuộc lớp `Light3D`, phát ra ánh sáng theo một hướng cụ thể với cấu trúc hình nón (*cone shape*).

Ánh sáng sinh ra sẽ tự động giảm dần cường độ theo khoảng cách. Tuy nhiên, đặc tính này có thể tinh chỉnh linh hoạt thông qua các tham số như năng lượng sáng, bán kính phủ sáng, hoặc các thuộc tính chung kế thừa từ lớp cha `Light3D`.

## 2. Chức năng chính

* **Tạo luồng sáng có hướng và giới hạn góc:** Khác với `OmniLight3D` (tỏa sáng 360 độ xung quanh), `SpotLight3D` chỉ tập trung chiếu sáng về một phía nhất định nằm trong phạm vi góc nón được quy định.

* **Đổ bóng thời gian thực (Shadow Casting):** Hỗ trợ tính toán và hiển thị bóng đổ thời gian thực (`Shadow Enabled`) cho các vật thể nằm trong phạm vi luồng sáng.

* **Chiếu hình ảnh / hoa văn (Projector):** Cho phép gán một `Texture2D` để chiếu hình ảnh/họa tiết lên bề mặt vật thể (ví dụ: hiệu ứng ống kính đèn pin, hoa văn cửa kính, hiệu ứng mặt lưới).

## 3. Ứng dụng thực tế trong Game Design

1. **Đèn pin (Flashlight) của nhân vật:** Gắn trực tiếp phía trước `Camera3D` (góc nhìn thứ nhất) hoặc theo hướng nhìn của nhân vật khi di chuyển trong môi trường tối.

2. **Đèn pha phương tiện:** Sử dụng cho hệ thống đèn chiếu sáng của xe hơi, xe máy, tàu thuyền... chiếu sáng con đường phía trước.

3. **Đèn sân khấu / Đèn chiếu điểm:** Chiếu sáng làm nổi bật nhân vật hoặc sự kiện chính trên sân khấu.

4. **Đèn kiến trúc & Công trình:** Đèn đường, đèn treo tường, đèn bàn trong nhà.

5. **Trực quan hóa tầm nhìn (Field of View - FOV):** Trong các game lén lút (Stealth Game), `SpotLight3D` được áp dụng cho camera an ninh hoặc tầm nhìn kẻ địch giúp người chơi nhận biết vùng nguy hiểm để tránh bị phát giác.

## 4. Các thông số quan trọng (Properties)

| Thuộc tính | Kiểu dữ liệu | Chức năng |
| ----- | ----- | ----- |
| **Spot Angle** | `float` | Độ mở góc của hình nón ánh sáng (từ hẹp đến rộng). |
| **Spot Range** | `float` | Khoảng cách ánh sáng có thể chiếu xa bao nhiêu mét. |
| **Spot Attenuation** | `float` | Độ suy giảm ánh sáng từ tâm ra mép ngoài và từ nguồn sáng ra xa (giúp viền sáng mềm hơn hoặc sắc nét hơn). |
| **Light Energy** | `float` | Cường độ sáng của nguồn sáng. |
| **Light Color** | `Color` | Màu sắc của ánh sáng phát ra. |
| **Shadow Enabled** | `bool` | Bật/Tắt chế độ tính toán bóng đổ thời gian thực. |

## 5. Demo / Implementation

*(Phần này sẽ được cập nhật sau)*
