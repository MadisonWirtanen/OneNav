<div align="center">
<img src="./favicon.ico">
<h1>OneNav</h1>
<p>一个简单美观的个人网址导航主页</p>
<p>依托GitHubPages和Workflows无服务器部署</p>
<p>Powered by 
<a href="https://github.com/geneasy/geneasy" target="_blank"><strong>GenEasy</strong></a> & 
<a href="https://github.com/imsyy/OneNav" target="_blank"><strong>OneNav</strong></a> & 
<a href="https://github.com/WebStackPage/WebStackPage.github.io" target="_blank"><strong>WebStackPage</strong></a>
</p>
</div>

# 部署与配置

本库可直接通过Workflows自动生成html并部署到GitHubPages, 只需修改links.yml或其它文件后提交即可, 同时也可以将已生成的页面通过Vercel等平台发布.

## GitHub部署与初步配置

1. fork本项目, 注意两个分支同时fork, 勿勾选仅fork主分支, 以下操作均在fork得到的仓库进行;

2. 在`Settings -> Actions -> General -> Actions permissions`选择`Allow all actions and reusable workflows`保存, 在`Workflow permissions`选择`Read and write permissions`保存, 确保Workflows的权限;

3. 在仓库主页按` 。`键或将网址中的`com`改为`dev`来进入编辑器界面, 不嫌麻烦也可以直接clone到本地进行配置;

4. 在编辑器中找到`links.yml`, 根据注释选择性修改, 然后找到最左侧第三个图标`Source Control`输入Message并Commit;

5. 在主页选择Actions, 等待部署成功后在`Settings -> Pages`处可找到对应链接, 若部署失败请阅读错误代码并核查之前的步骤;

6. 此外如果在fork时将仓库名字改为`${yourname}.github.io`即可直接通过`https://${yourname}.github.io`访问.

## Gitpod进行个性配置

1. 使用GitHub账户[注册登录Gitpod](https://gitpod.io/workspaces)后点击`New Workspace`并选中刚fork的仓库点击`Continue`等待Workspace启动;

2. 使用命令`bash gitpod.sh`即可复现Workflows的工作同时在8000端口打开了一个http服务以供访问查看效果, 或者也可以使用插件进行实时预览, 根据需要进行个性化的修改与调整.

## 使用Vercel发布网页

1. Vercel默认对主分支进行部署, 而要部署的html文档在gh-pages分支, 因此可以在`Settings -> General -> Default branches`中点`switch`将gh-pages设置为主分支, 然后再进行Vercel部署, 部署成功后再切换回原来的主分支不会影响Vercel之后的部署. 需注意上述`gitpod.sh`脚本是将html文档输出到了主分支根目录, 所以如果使用了此脚本, 则无需切换分支也可成功部署;

2. 使用GitHub账户[注册登录Vercel](https://vercel.com/dashboard)后点击`Add New -> project`并选择fork的仓库直接点击`Deploy`即可;

3. Vercel部署成功后可添加自定义域名(自动生成的二级域名已被墙), 可在[dynv6](https://dynv6.com/)免费获取二级域名并按提示配置.

## 常用配置项说明

### index.hbs

此文件为生成html的模板

69行: 网页侧栏有宽窄两种形式且可通过按钮调节, 此处有`collapsed`是默认窄, 删去则默认宽;

161-301行: 搜索栏的配置, 未写入links.yml, 可自行删减搜索项目;

391-407行: 版权信息定义处;

### css

style.css

32行: 定义了壁纸, 为必应每日一图, api接口来自第三方, 可替换

36行: 定义了页面主体部分的透明度为0.88, 可修改

40行: 定义了一行显示多少个链接, 此处25%宽度即同时显示四个, 可修改

92/238/607/955行: #ffffffdd定义了顶侧底栏颜色为ffffff, 透明度为十六进制的dd/ff, 可修改

dark.css

13行: 定义了透明度为0.66的黑色对壁纸遮罩, 可修改

19行: 定义了夜间模式的壁纸, 同上api, 可替换

89/159/172-259行: #464646dd定义了顶侧底栏颜色为464646, 透明度为十六进制的dd/ff, 可修改

# 项目说明

源码来自于已归档的[OneNav](https://github.com/imsyy/OneNav)
本仓库进行了一些简单的整理并通过[geneasy](https://github.com/geneasy/geneasy)文档生成工具与Workflows实现了无服务器的部署, 只需修改links.yml添加链接即可自动生成html文档.