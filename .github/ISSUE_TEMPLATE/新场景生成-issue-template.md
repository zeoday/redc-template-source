---
name: 新场景生成 issue template
about: 通过 ai 自动生成新的场景
title: "[新场景]"
labels: enhancement
assignees: Copilot

---

参考目前模板编写教程，实现在 xx  云下部署 xxx 的场景

可以参考 f8x 脚本中 ffffffff0x/f8x@main/f8x#L8550 yakit_Install 函数这一部分的实现逻辑
因为走的是 oss 存储桶，所以这个场景里，yakit 服务端的下载无需单独配置 github 代理链接
