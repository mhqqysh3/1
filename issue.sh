#!/bin/bash

# 生成静态文件，Hugo 会将文件生成到 `public` 目录
hugo

# 删除目标仓库 `mhqqysh3_2.github.io` 中现有的文件
rm -rf ../mhqqysh3_2.github.io/*

# 将 `public` 文件夹中的所有静态文件移动到 `mhqqysh3_2.github.io` 仓库
mv ./public/* ../mhqqysh3_2.github.io/

# 删除本地的 `public` 目录
rm -rf ./public

# 进入目标仓库目录
cd ../mhqqysh3_2.github.io/

# 添加所有更改到 Git 暂存区
git add .

# 提交更改，带有当前时间戳
git commit -m "rebuilding site $(date)"

