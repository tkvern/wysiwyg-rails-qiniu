# wysiwyg-rails-qiniu 

wysiwyg-rails-qiniu 是基于 [wysiwyg-rails](https://rubygems.org/gems/wysiwyg-rails)制作, 上传的资源直接支持七牛云存储
在使用该gem包前,你得会使用七牛云存储

## 安装

添加下面代码到你的 Gemfile:

```ruby
gem "wysiwyg-rails-qiniu"
```

然后运行 `bundle install`.

## 将资源文件加入到你的 `assets`目录

在你的 `application.css` 文件中, 引入下列文件:

```css
/*
 *= require froala_editor.min.css
 *= require froala_style.min.css
 *= require font-awesome
 */
```

如果你想使用黑色主题, 你可以加入 `themes/dark.min.css` 到`application.css`文件中.

在你的 `application.js`, 引入以下文件:

```javascript
//
//= require froala_editor.min.js
//
```

如果你想使用更多功能插件 [Available Plugins](https://froala.com/wysiwyg-editor/docs/plugins), 你应该将下面的这些文件加入的 `application.js` 和 `application.css`.
其中`support_qiniu.min.js`是必须要引入的,否则无法使用七牛云存储
```javascript
// Include other plugins.
//= require plugins/support_qiniu.min.js
//= require plugins/align.min.js
//= require plugins/char_counter.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/colors.min.js
//= require plugins/emoticons.min.js
//= require plugins/entities.min.js
//= require plugins/file.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/fullscreen.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/inline_style.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quick_insert.min.js
//= require plugins/quote.min.js
//= require plugins/save.min.js
//= require plugins/table.min.js
//= require plugins/url.min.js
//= require plugins/video.min.js
```

```css
/*
 *= require plugins/char_counter.min.css
 *= require plugins/code_view.min.css
 *= require plugins/colors.min.css
 *= require plugins/emoticons.min.css
 *= require plugins/file.min.css
 *= require plugins/fullscreen.min.css
 *= require plugins/image_manager.min.css
 *= require plugins/image.min.css
 *= require plugins/line_breaker.min.css
 *= require plugins/quick_insert.min.css
 *= require plugins/table.min.css
 *= require plugins/video.min.css
 */
```

同样的,如果你要使用中文语言包,请加入响应的js

```javascript
// Include Language if needed
//= require languages/zh_cn.js
```

到目前位置你已经配置好编辑的基本资源,你需要重启rails服务器
## 初始化编辑器

详细文档请参见作者官网,提供了初始化代码 [Froala WYSIWYG Editor official documentation](https://www.froala.com/wysiwyg-editor/docs).

这里提供部分示例代码, 在使用下面代码之前你应该需要知道如何生成七牛上传凭证
```javascript
  $(function() {
    $('#edit').froalaEditor({
      language: "zh_cn",
      width: 900,
      heightMin: 300,
      heightMax: 500,
      requestWithCORS: false,

      //图片上传配置(必须)
      imageUploadDomain: "<%= Rails.application.config.qiniu_domain %>",    //七牛云存储空间域名地址
      imageUploadParam: 'file',
      imageUploadURL: 'http://upload.qiniu.com',                            //七牛上传服务器, 如果是海外服务器为 http://up.qiniu.com
      imageUploadParams: { token: '<%= @uptoken %>'},                       //上传凭证, 详细规则查看七牛官方文档
      imageUploadMethod: 'POST',
      imageMaxSize: 5 * 1024 * 1024,
      imageAllowedTypes: ['jpeg', 'jpg', 'png'],
      
      //文件上传配置(必须)
      fileUploadDomain: "<%= Rails.application.config.qiniu_domain %>",     //七牛云存储空间域名地址
      fileUploadParam: 'file',
      fileUploadURL: 'http://upload.qiniu.com',                             //同上
      fileUploadParams: { token: '<%= @uptoken %>'},                        //同上
      fileUploadMethod: 'POST',
      fileMaxSize: 20 * 1024 * 1024,
      fileAllowedTypes: ['*']
    });
  });
```

## 配置代码视图
使用代码视图加高亮效果,可加入以下代码,也可以使用[codemirror-rails](https://rubygems.org/gems/codemirror-rails)这个gem包

```html
<link href="//cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css" media="screen" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
```

## 许可

wyg-rails项目是在麻省理工学院的许可。然而,为了使用Froala WYSIWYG HTML编辑器插件你应该购买一个许可证。
下面是许可链接,请支持源作者
Froala Editor has [3 different licenses](https://froala.com/wysiwyg-editor/pricing).
For details please see [License Agreement](https://froala.com/wysiwyg-editor/terms).

## 致谢
感谢Froala项目作者的贡献, 我在项目的原基础上增加了对七牛云存储的支持.
如果你需要使用其它的云存储平台,请使用[wysiwyg-rails](https://rubygems.org/gems/wysiwyg-rails)进行自定义配置
