<img src="img/tipflow-readme.png" width="112" height="112" alt="Tipflow 流线图标">

# Tipflow

一款原生 macOS 效率工具，将图片反推提示词、鼠标快捷键、自动滚动与光标换肤整合在一个工作台中。

**当前版本：v0.1** · **Universal：Apple Silicon / Intel** · **深色 / 浅色 / 跟随系统**

[下载安装包](https://github.com/Seven-hub-fanfan/Tipflow/releases/download/v0.1/Tipflow-v0.1-universal.dmg) · [查看更新](https://github.com/Seven-hub-fanfan/Tipflow/releases/tag/v0.1) · [对应源码快照](https://github.com/Seven-hub-fanfan/Tipflow/releases/download/v0.1/Tipflow-v0.1-source-update.zip)

## 主要功能

- **图片反推提示词**：导入参考图，生成中文、英文、JSON 与负向提示词，支持流式输出、停止分析和 Markdown 导出。
- **多模型 API 接入**：兼容 OpenAI、Gemini、Anthropic 三种协议，可保存多套连接，支持自定义接口与本地 Ollama。
- **多种图片来源**：打开文件、拖拽、粘贴、图片链接和选区截图；最多五张图片依次分析。
- **本地结果管理**：搜索、收藏、历史恢复，最多保留 100 条结果与参考图；API Key 存储在 macOS 钥匙串。
- **鼠标快捷键**：录入最多十组组合键，鼠标每次点击依次执行一组，支持左键 / 中键触发、循环、回退与进度保存。
- **自动滚动**：默认双击中键启动，移动光标控制方向与速度；支持多种鼠标触发方式和 Option + 触控板滚动。
- **光标换肤**：系统默认、奶蛙、小七、豆包与七款 Sweezy 主题，支持 13 种静态状态、预览、收藏及大小调整。
- **原生界面**：烟灰玻璃风格、冰蓝流线图标、深浅色外观与可拖拽应用的权限引导。

## 安装

1. 下载 [Tipflow-v0.1-universal.dmg](https://github.com/Seven-hub-fanfan/Tipflow/releases/download/v0.1/Tipflow-v0.1-universal.dmg)。
2. 退出旧版，将 **Tipflow.app** 拖入 **Applications（应用程序）**。
3. 打开 Tipflow，根据需要在「权限设置」中授予权限。

当前为本地签名预览包，尚未经过 Apple 公证。若 macOS 阻止打开，可在「系统设置 → 隐私与安全性」中选择「仍要打开」。
重新构建会改变本地签名；旧权限已开启却无效时，请移除旧条目，再添加 Applications 中的当前副本。

最低部署目标为 macOS 13；已在 macOS 26.6.2 / Apple Silicon 检查原生界面。
Universal 编译包含两种架构，Intel 实机及较早 macOS 版本尚未验证。

## 权限与数据

本地图片导入与 API 分析不需要辅助功能权限；选区截图需要屏幕录制权限，自动滚动与全局快捷键需要辅助功能和输入监控。

图片分析会将压缩后的参考图和分析要求发送到所选 API，最长边为 1600 px，原始文件上限为 32 MB。
模型调用费用与数据处理规则由接口提供方决定；使用本地 Ollama 可在本机分析。
结果与参考图保存在本机，图片反推不能保证还原原始生成提示词。

豆包素材已内置，其余皮肤按需下载，下载后可离线使用。删除正在使用的皮肤会先恢复系统光标。

## 源码构建

发布页中的 [源码快照](https://github.com/Seven-hub-fanfan/Tipflow/releases/download/v0.1/Tipflow-v0.1-source-update.zip) 包含 v0.1 的同版本图标更新。
解压后，安装 Xcode Command Line Tools，并在源码目录执行：

```bash
bash scripts/build_app.sh
bash scripts/create_dmg_from_app.sh
```

输出为 `build/Tipflow.app` 和 `build/Tipflow-v0.1-universal.dmg`。
详细构建与验证流程见 [scripts/README.md](scripts/README.md)。

## 维护者

当前由 **[Seven-hub-fanfan](https://github.com/Seven-hub-fanfan)** 维护。

## 许可与致谢

使用 [GNU GPL-3.0](LICENSE) 许可证。

Tipflow 延续 [Seven-hub-fanfan/scrollapp-leftclick](https://github.com/Seven-hub-fanfan/scrollapp-leftclick)，
该项目基于 [fromis-9/scrollapp](https://github.com/fromis-9/scrollapp)。
保留上游许可证、版权说明与开发历史，感谢原作者的工作。
