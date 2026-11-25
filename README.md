# JCore 5.6.1 客户 UTS 验证分支

此分支为 normal iOS SDK 的隔离验证分发，未发布正常公有云渠道或版本 Tag。SDK 已从合并后的精确源码重新编译，通过原 packageFramework.sh release 调用链构建。

- SDK 版本：5.6.1；源码 Revision：`1a10a244c6fd3cff55f313e4484d21a841ad9c89`。
- 构建来源：本地 Xcode 26.3 / iOS SDK 26.2，原入口 release，BuildID 501。Jenkins 旧 locale 适配契约与新源码不匹配，未冒称 Jenkins 成功。
- 根目录直接为 `JCore.xcframework`；两片均为静态 `JCore.framework`，module map 位于 `Modules/module.modulemap`，不含 Headers 根 map。
- `JCoreWrapper` 只承担 SPM 系统库链接、依赖传递和隐私资源 bundle；SDK 导入名仍为 `JCore`。
- `PROVENANCE.json` 与 XCFramework 内的 RepackProvenance.json 记录来源和封装前后 archive SHA-256。JCore normal archive 在合并 JCommon 后才封装。

## SPM

在 Xcode 添加 `https://github.com/jpush/jcore-sdk.git`，选择分支 `customer/uts-static-framework-5.6.1-cec94711`，使用 `JCore` 产品。

## 客户验收

请在实际 UTS 插件中替换 SDK、清理构建缓存后验证 Swift/ObjC 导入、初始化及所需功能。客户 UTS 工程未提供，UTS 构建/运行仍待验收；此分支不代表完成 UTS 或真机运行测试。
