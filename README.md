# X1a0He Plugin 2 for macOS

![platform](https://img.shields.io/badge/platform-macos-blue.svg)
[![release](https://img.shields.io/badge/release-v2.0.0-brightgreen.svg)](https://github.com/X1a0He/X1a0HeWeChatPlugin/releases)
![support](https://img.shields.io/badge/support-%204.1.7+-blue.svg)

macOS 客户端插件
![](images/WeChatMainMockUp.png)


> ✅ 已在以下环境中测试通过\
> 💻 设备: M1 Max macOS Tahoe 26.3 Beta (25D5087f)\
> 📒 微信版本: 4.1.7.28 (34318)\
> ❌ 不会支持 MAS 版本\
> ❌ 不会支持 Intel
> 
> MD5: 8dea7030f8e7b76708abc60cedb84892\
> SHA1: 0a0ea6e0c1ed7fcb8d4d3a7eea777ba2121f49ad\
> SHA256: 3fc3066e52f5b9a5cdb03a1db92eb076c5392680765c37f7c0fd131bc71aa287

|    版本    |  版本号  | 支持 | Arm | Intel | MAS |
|:--------:|:-----:|:--:|:---:|:-----:|:---:|
| 4.1.7.25 | 34262 | ✅  |  ✅  |   ❌   |  ❌  |
| 4.1.7.26 | 34286 | ✅  |  ✅  |   ❌   |  ❌  |
| 4.1.7.28 | 34318 | ✅  |  ✅  |   ❌   |  ❌  |

# 目录

* [如何安装](#如何安装)
    * [必要步骤](#必要步骤)
        * [已安装 Git 的用户](#已安装-git-的用户)
        * [未安装 Git 的用户](#未安装-git-的用户)
* [插件菜单预览](#插件菜单预览)
* [✨功能](#功能)
* [📝更新日志](#更新日志)
* [使用须知](#使用须知)
* [FAQ](#faq)
* [👨🏻‍💻作者](#作者)

# 如何安装

> 注意: 执行脚本需要输入你的 Mac 密码

## 必要步骤

### 已安装 Git 的用户

**Mac 上安装了 Git 的可以直接克隆仓库后执行脚本**

```shell
git clone https://github.com/X1a0He/X1a0HeWeChatPlugin.git
cd X1a0HeWeChatPlugin
sudo sh install.sh
```

### 未安装 Git 的用户

- 下载完整仓库压缩包后解压到相关目录\
  ![](images/Download-ZIP.png)

- 完成解压后，打开`终端`\
  ![](images/Terminal.png)

执行以下命令

```shell
cd X1a0HeWeChatPlugin目录
sudo sh install.sh
```

**等待安装完成即可**

# 📝更新日志

- **更多更新日志，请查看 [更新日志](change-log.md)**

### 2.0.2 (2026.01.24)

- 支持 4.1.7.28 (34318)
- 不再支持 4.1.6.17 (33480)
- 新增命中失败时弹出失败提示



<a href="https://star-history.com/#X1a0He/X1a0HeWeChatPlugin&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=X1a0He/X1a0HeWeChatPlugin&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=X1a0He/X1a0HeWeChatPlugin&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=X1a0He/X1a0HeWeChatPlugin&type=Timeline" />
 </picture>
</a>

# 使用须知

**1. 不接受任何新功能请求**\
**2. 不接受任何类似以下几点的无脑issue**

- 怎么用？不会用？
- 会不会封号？
- 可以开源吗？

> ❌❌❌ 不再支持 3.X 版本，不要再叫了

# FAQ

- **会封号吗？**

> 所有处理均为本地处理，不经过任何网络传输，有能力的可以自行抓包检测\
> ⚠️ 多开功能不建议使用，因为本来官方就不支持多开

- **为什么不开源？有安全和隐私问题吗？**

> 为什么要开源？用人不疑，疑人不用\
> 另外，我不关心你的聊天记录，也不关心你的设备有多好，更不关心你的微信有多少钱，也不关心你人在哪里\
> 所以不会有任何安全和隐私问题，你可以放心使用，不放心随便检测

# 插件菜单预览

![](images/Menu.png)
![](images/UserPhrase.png)

# ✨功能

- [x] 消息撤回拦截
    - [x] 防撤回他人消息
        - [x] 拦截语音消息
        - [x] 拦截动画表情消息
        - [x] 拦截位置消息
        - [x] 拦截图片消息
        - [x] 拦截文本消息
        - [x] 拦截个人名片消息
        - [x] 拦截视频消息
        - [x] 拦截其他类型消息
            - [x] 拦截小程序消息
            - [x] 拦截拍一拍消息
            - [x] 拦截文件消息
            - [x] 拦截合并转发消息
            - [x] 拦截引用消息
            - [x] 拦截音乐消息
    - [x] 防撤回自己消息【功能同上】
- [x] 允许微信多开 ⚠️请慎用该功能
- [x] 禁用日志上报
- [x] 禁用安全模式
- [x] 禁用检测更新
- [x] 禁用启动检查更新
- [x] 自定义设置撤回提示短语
- [x] 检测插件是否有新版本

# 👨🏻‍💻作者

X1a0He Plugin 2 for macOS © X1a0He

Created on 2025.01.20

> GitHub [@X1a0He](https://github.com/X1a0He/) \
> Telegram [@X1a0He](https://t.me/X1a0He_bot)
