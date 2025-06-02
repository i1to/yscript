# Vim 配置文件使用指南

这个目录包含了个人的 Vim 编辑器配置文件和相关的开发环境设置。

## 📁 文件说明

- **.vimrc** - Vim 主配置文件
- **.bashrc** - Bash shell 配置文件
- **vim.tar** - Vim 配置的打包备份
- **!** - 配置文件备份

## 🚀 快速安装

### 1. 进入 vim 目录
```bash
cd yscript/vim
```

### 2. 复制配置文件到用户目录
```bash
# 复制 vim 配置目录（如果存在）
cp -a ./.vim ~

# 复制 vimrc 配置文件
cp -a .vimrc ~
```

### 3. 安装必要的依赖

#### 安装 curl（如果系统没有）
```bash
sudo apt update
sudo apt install curl
```

#### 安装 vim-plug 插件管理器
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 4. 安装 Vim 插件
打开 Vim 并运行以下命令：
```vim
:PlugInstall
```

## ⚙️ 配置特性

### Vim 配置 (.vimrc)
- **插件管理**: 使用 vim-plug 管理插件
- **Git 集成**: vim-fugitive 插件提供 Git 操作
- **代码搜索**: cscope.vim 和 grep 插件
- **语法高亮**: 支持多种编程语言
- **智能缩进**: 自动缩进和代码格式化
- **快捷键**: 自定义的快捷键映射

### 主要快捷键 (Leader key: .)
- `.q` - 退出
- `.w` - 保存
- `.t` - 生成 ctags
- `.gs` - Git status
- `.gl` - Git log
- `.gd` - Git diff
- `.rg` - 递归搜索

### Bash 配置 (.bashrc)
- **彩色提示符**: 带有 Git 分支显示
- **别名设置**: 常用命令的简化别名
- **历史优化**: 改进的命令历史记录
- **环境变量**: 开发工具路径配置

## 📝 Git 配置示例

创建 `~/.gitconfig` 文件：

```bash
cat > ~/.gitconfig << 'EOF'
[user]
    name = Your Name
    email = you@example.com
[core]
    editor = vim
[color]
    ui = auto
[init]
    defaultBranch = main
[alias]
    st = status
    co = checkout
    br = branch
    cm = commit -m
    lg = log --oneline --graph --decorate
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = !gitk
EOF
```

## 🔧 使用步骤总结

1. **安装依赖**:
   ```bash
   sudo apt update && sudo apt install curl vim git
   ```

2. **复制配置**:
   ```bash
   cd yscript/vim
   cp -a .vimrc ~
   cp -a .bashrc ~/.bashrc_backup  # 备份现有配置
   ```

3. **安装插件管理器**:
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

4. **配置 Git**:
   ```bash
   # 编辑 ~/.gitconfig 文件，添加上述配置
   ```

5. **启动 Vim 并安装插件**:
   ```bash
   vim
   # 在 Vim 中执行: :PlugInstall
   ```

## 📋 插件列表

- **vim-fugitive**: Git 集成
- **cscope.vim**: 代码导航和搜索
- **grep**: 文件内容搜索

## 🛠️ 故障排除

### 插件安装失败
- 检查网络连接
- 确保 curl 已安装
- 手动下载 vim-plug

### 配置不生效
- 重启终端或执行 `source ~/.bashrc`
- 检查文件权限
- 确认配置文件路径正确

## 💡 提示

- 首次使用建议备份原有配置文件
- 可以根据个人需求修改配置
- 定期更新插件: `:PlugUpdate`

---

*配置文件适用于 Linux/Unix 系统*
