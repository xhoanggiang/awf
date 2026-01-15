# 🚀 AWF - Antigravity Workflow Framework v3.0

**The Operating System for AI Engineers.**  
*Turn your Antigravity Agent/Cursor into a Senior Engineer with disciplined workflows.*

[![Website](https://img.shields.io/badge/Website-Live_Demo-cyan?style=for-the-badge)](https://tuan130294.github.io/awsweb)
[![Install Global](https://img.shields.io/badge/Install-Global-blue?style=for-the-badge)](#-installation-global)

---

## 🛑 The Problem (Nỗi đau của bạn)

Bạn có thường gặp những cảnh này khi code với AI không?

1.  **Memory Loss (Hay quên):** Chat được 20 câu, AI quên béng cấu trúc Database cũ. Nó tự ý tạo bảng trùng lặp hoặc viết code xung đột.
2.  **Lazy Coding (Code ẩu):** AI đưa code "chạy được là được". Thiếu `try-catch`, hard-code API Key, và không check Edge Cases.
3.  **Loop Debugging (Sửa đâu hỏng đó):** Fix lỗi A thì đẻ ra lỗi B. AI cứ sửa vòng vo mà không tìm Root Cause.

👉 **Đó là vì bạn đang dùng AI như một "Junior Developer".** Cần phải quản lý (Manage) nó.

---

## ✅ The Solution: AWF 3.0

AWF là bộ 14 lệnh Global (**Global Workflows**) giúp cài đặt "kỷ luật thép" cho AI. Nó buộc AI phải tuân theo quy trình chuẩn Enterprise:

*   **Plan trước, Code sau**: Cấm gõ phím khi chưa có Spec (`/plan`).
*   **Safety First**: Tự động check bảo mật trước khi đưa code (`/code`).
*   **Infinite Memory**: Lưu toàn bộ context vào file `.brain` để không bao giờ quên (`/save-brain`).

---

## 📦 Installation (Global)

Chạy **1 lần duy nhất**. AWF sẽ được cài vào hệ thống (`~/.gemini/antigravity/global_workflows`) và tự động kích hoạt cho **mọi dự án** bạn mở sau này.

### 🪟 Windows (PowerShell)
Mở Terminal trong Antigravity/Cursor (Ctrl + `) và dán lệnh sau:

```powershell
iex "& { $(irm https://raw.githubusercontent.com/TUAN130294/awf/main/install.ps1) }"
```

### 🍎 Mac / Linux (Terminal)
```bash
curl -fsSL https://raw.githubusercontent.com/TUAN130294/awf/main/install.sh | sh
```

> **Sau khi cài:** Hãy khởi động lại Antigravity/Cursor để hệ thống nhận diện Global Workflows. Test bằng cách gõ `/` trong khung chat.

---

## 🎮 Hướng dẫn sử dụng (Best Practices)

Đừng chat lan man. Hãy dùng quy trình 3 bước này để đạt hiệu quả cao nhất:

### 1. Khởi động & Lập kế hoạch
*   **`/init`**: Dùng cho dự án mới tinh. Setup folder structure, git, dependencies.
*   **`/recap`**: Dùng đầu ngày làm việc. AI đọc file `.brain` để nhớ lại hôm qua đang làm gì.
*   **`/plan` (QUAN TRỌNG NHẤT)**:
    *   *Input:* `/plan Thêm tính năng thanh toán qua Stripe`
    *   *AI Action:* Đọc DB, đọc API Docs, viết file `docs/specs/payment.md`.
    *   *Benefit:* Bạn duyệt logic TRƯỚC khi tốn token viết code.

### 2. Xây dựng (Construction)
*   **`/visualize`**: Designer Mode. Yêu cầu AI vẽ HTML/CSS hoặc Component UI trước.
*   **`/code` (QUAN TRỌNG NHẤT)**:
    *   *Input:* `/code Implement payment theo file spec vừa tạo`
    *   *AI Action:* Viết code + Viết Unit Test + Check SQL Injection + Tự Review.
    *   *Benefit:* Code sạch, an toàn, ít lỗi vặt.

### 3. Vận hành & Bảo trì (Ops)
*   **`/debug`**: "Sherlock Holmes Mode". Ép AI đọc log, phân tích nguyên nhân gốc rễ (Root Cause Analysis) thay vì đoán mò.
*   **`/audit`**: Kiểm tra sức khỏe dự án. Tìm code chết, thư viện cũ, lỗ hổng bảo mật.
*   **`/deploy`**: Chuẩn bị cho Production (Optimize build, Dockerize).

### 4. Bộ nhớ (Memory)
*   **`/save-brain` (VŨ KHÍ BÍ MẬT)**:
    *   *Khi nào dùng:* Cuối buổi làm việc, hoặc khi chat quá dài.
    *   *Tác dụng:* Tóm tắt toàn bộ kiến thức mới vào file `.brain`.
    *   *Mẹo:* Sau khi save, bạn có thể xóa chat history (New Chat) để tiết kiệm Token mà AI vẫn nhớ mọi thứ!

---

## 📚 Danh sách 14 Lệnh

| Command | Role | Description |
| :--- | :--- | :--- |
| **`/plan`** | Architect | Thiết kế tính năng, DB Schema, Logic Flow. |
| **`/code`** | Senior Dev | Viết code, Refactor, Security Check. |
| **`/visualize`** | Designer | Tạo UI/UX, Component, TailwindCSS. |
| **`/debug`** | Detective | Sửa lỗi sâu (Deep debugging). |
| **`/save-brain`** | Librarian | Lưu context dự án vào bộ nhớ vĩnh cửu. |
| **`/recap`** | Historian | Khôi phục context từ bộ nhớ. |
| **`/init`** | Founder | Khởi tạo dự án mới. |
| **`/test`** | QA Engineer | Viết & Chạy test case. |
| **`/audit`** | Security | Kiểm tra lỗ hổng & Tech Debt. |
| **`/refactor`** | Cleaner | Dọn dẹp code, tối ưu hiệu năng. |
| **`/deploy`** | DevOps | Đóng gói, Docker, CI/CD. |
| **`/rollback`** | Time Traveler | Quay lại phiên bản ổn định trước đó. |
| **`/run`** | Operator | Chạy ứng dụng thông minh. |
| **`/cloudflare-tunnel`** | Network Admin | Quản lý tunnel, domain. |

---

## ❓ FAQ

**Q: Tôi có cần copy file workflows vào từng dự án không?**  
A: **KHÔNG.** Với bản v3.0 này, workflows được cài Global. Bạn mở bất kỳ dự án nào lên cũng dùng được ngay.

**Q: Nó có tốn nhiều Token không?**  
A: Ngược lại, nó giúp **tiết kiệm Token dài hạn**. Thay vì chat lan man 100 câu tốn kém, bạn dùng `/plan` và `/code` để làm đúng ngay từ đầu. Dùng `/save-brain` để nén context lại, không cần giữ history dài.

**Q: Dùng với Github Copilot được không?**  
A: AWF được tối ưu tốt nhất cho **Antigravity (Google)** và **Cursor/Windsurf**. Các AI khác có thể hiểu nội dung file markdown nhưng không kích hoạt được native workflow.

---
*Built with ❤️ in Vibe Coding Mode.*
