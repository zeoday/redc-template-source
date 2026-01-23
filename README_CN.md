# redc-template

中文 | [English](README.md)

https://github.com/wgpsec/redc 引擎要用到的 tf 模板仓库

模板编写教程（中文）：[WRITING_TEMPLATES_CN.md](WRITING_TEMPLATES_CN.md)

## 分类解释

按照各个云来分类

- aliyun 为 阿里云 上的各个场景
- aws 为 亚马逊云 上的各个场景
- tencent 为 腾讯云 上的各个场景
- vultr 为 vultr云 上的场景 (不是很推荐了,要用不如用 aws)

还有 华为云、火山等等后续慢慢补充

## 需要准备什么

阿里云
- aksk (要有能开机器、vpc、vswitch、安全组的权限,嫌麻烦就弄高权限)

腾讯云
- aksk (同上)

aws
- aksk (同上)
- launch_template id (启动模板 id,就是你自己去控制台建个启动模板，然后复制下 id 替换我tf模板里的 id 即可)
- 你自己aws控制台生成的 ssh 密钥,保存好到本地

vultr (不推荐使用)
- aksk (同上)

## 如何使用

推荐配合 redc 工具使用
- https://github.com/wgpsec/redc

> 注意：每个模板场景文件夹路径都可以单独使用，即 “不依靠 redc 引擎，独立使用“

## 文件存储的规划

运行时所需的静态资源通过模板中 github_proxy 的定义的代理链接去下载，aws 场景无需考虑代理

运行后的文件存储在 R2 存储上,通过 redc 引擎的 upload_r2 模块实现上传功能
