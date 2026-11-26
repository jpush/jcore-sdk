# JCore 5.6.1 Jenkins客户验证分支

此分支只使用原Jenkins环境实际构建的normal SDK，未正式发布渠道或Tag。

- producer：Jenkins；构建：[#186](https://jenkins.qa.jpushoa.com/job/sdk-build/job/ios-sdk-build/job/ios-reconsitution/186/)。
- SDK源码：`a7a307cf25caed3d34a4cd78389b1d9f29a23c87`；controls：`77ab6326a979b2653c940330d9a70da4a766ec99`。
- 既有工具链：Xcode14.2 / Swift5.7.2 / Python3.9.6。未调整Job、pipeline、节点或全局环境配置，未使用local替代SDK包。
- 原SDK ZIP SHA-256：`f0cb05d770a74e6986a0c42cc36e98f62e8f75128e33ae55c1ea6f3c26cdd557`。
- 根目录直接`JCore.xcframework`，两片均静态Framework，map位于Modules/module.modulemap。
- `JCoreWrapper`仅传递系统库/依赖与隐私bundle；实际SDK模块名仍`JCore`。JCore normal在JCommon最终合并后封装，原archive与Framework字节SHA一致。

## 集成

Xcode添加`https://github.com/jpush/jcore-sdk.git`，选择分支`customer/uts-static-framework-5.6.1-jenkins-cec94711`，使用JCore产品。

## 验证边界

Jenkins原SDK构建和产物来源、版本、静态格式、封装哈希已核；本批Jenkins产物的完整consumer App/SPM构建、归档与UTS运行尚未验证，未以旧local产物的测试结果代替。SDK源码最低配置不等于最低系统实机运行证明。请在客户实际UTS工程验收；不要将本验证分支当正式发行。

来源详见PROVENANCE.json及XCFramework内RepackProvenance.json。旧local分支保留历史，不作为本分支制品来源。
