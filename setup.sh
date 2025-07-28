#!/bin/bash
# 设置 Avatar Scene Browser 文档环境

echo "==================================="
echo "Avatar Scene Browser 文档环境设置"
echo "==================================="

# 检查 Python 是否安装
if ! command -v python3 &> /dev/null
then
    echo "错误：Python 3 未安装。请先安装 Python 3。"
    exit 1
fi

echo "检测到 Python 版本："
python3 --version

# 创建虚拟环境（如果不存在）
if [ ! -d "venv" ]; then
    echo "创建 Python 虚拟环境..."
    python3 -m venv venv
fi

# 激活虚拟环境
echo "激活虚拟环境..."
source venv/bin/activate

# 升级 pip
echo "升级 pip..."
pip install --upgrade pip

# 安装依赖
echo "安装依赖包..."
pip install -r requirements.txt

echo ""
echo "==================================="
echo "环境设置完成！"
echo ""
echo "使用方法："
echo "1. 激活虚拟环境: source venv/bin/activate"
echo "2. 启动本地服务: ./serve.sh 或 mkdocs serve"
echo "3. 构建静态站点: mkdocs build"
echo "===================================" 