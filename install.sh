#!/bin/bash
# AWF Installer for Mac/Linux
# Supports: Per-Project & Global installation

REPO_URL="https://raw.githubusercontent.com/TUAN130294/awf/main/workflows"
WORKFLOWS=(
    "plan.md" "code.md" "visualize.md" "deploy.md" 
    "debug.md" "refactor.md" "test.md" "run.md" 
    "init.md" "recap.md" "rollback.md" "save_brain.md" 
    "audit.md" "cloudflare-tunnel.md" "README.md"
)

# Check for global flag
if [[ "$1" == "--global" ]] || [[ "$1" == "-g" ]]; then
    TARGET_DIR="$HOME/.agent/workflows"
    echo "🌍 Chế độ GLOBAL: Cài vào $TARGET_DIR"
else
    TARGET_DIR=".agent/workflows"
    echo "📁 Chế độ PROJECT: Cài vào thư mục hiện tại"
fi

echo ""
echo "🚀 Đang cài đặt Antigravity Workflow Framework (AWF)..."
echo ""

# Create directory
mkdir -p "$TARGET_DIR"

# Download files
success=0
failed=0
for wf in "${WORKFLOWS[@]}"; do
    if curl -f -s -o "$TARGET_DIR/$wf" "$REPO_URL/$wf"; then
        echo "   ✅ $wf"
        ((success++))
    else
        echo "   ❌ $wf (Lỗi tải)"
        ((failed++))
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 Hoàn tất! Đã cài $success/${#WORKFLOWS[@]} workflows."

if [[ "$1" == "--global" ]] || [[ "$1" == "-g" ]]; then
    echo ""
    echo "📌 LƯU Ý: Đây là cài đặt Global."
    echo "   Nếu Antigravity không tự nhận, chạy lệnh sau trong mỗi project:"
    echo ""
    echo "   curl -fsSL https://raw.githubusercontent.com/TUAN130294/awf/main/install.sh | sh"
else
    echo ""
    echo "👉 Restart Antigravity/IDE để nhận diện lệnh mới."
    echo "👉 Gõ '/' trong chat để thấy các siêu lệnh!"
fi

echo ""
echo "📖 Hướng dẫn: https://tuan130294.github.io/awsweb"
echo ""
