# wysiwyg-rails-qiniu 

wysiwyg-rails-qiniu 是基于 [wysiwyg-rails](https://rubygems.org/gems/wysiwyg-rails)制作, 上传的资源直接支持七牛云存储
在使用该gem包前,你得会使用七牛云存储

## Installation

Add this to your Gemfile:

```ruby
gem "wysiwyg-rails-qiniu"
```

and run `bundle install`.

## Include in your assets

In your `application.css`, include the css file:

```css
/*
 *= require froala_editor.min.css
 *= require froala_style.min.css
 *= require font-awesome
 */
```

If you want to use the dark theme, then you have to include `themes/dark.min.css` file too.

In your `application.js`, include the JS file:

```javascript
//
//= require froala_editor.min.js
//
```

If you need to use any of the [Available Plugins](https://froala.com/wysiwyg-editor/docs/plugins), then you should include those too in your `application.js` and `application.css`.
```javascript
// Include other plugins.
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

Similar, if you want to use language translation you have to include the translation file.
```javascript
// Include Language if needed
//= require languages/ro.js
```

Then restart your web server if it was previously running.

## Initialize Froala Editor

Details about initializing the editor can be found in the [Froala WYSIWYG Editor official documentation](https://www.froala.com/wysiwyg-editor/docs).

## License

The `wysiwyg-rails` project is under MIT license. However, in order to use Froala WYSIWYG HTML Editor plugin you should purchase a license for it.

Froala Editor has [3 different licenses](https://froala.com/wysiwyg-editor/pricing).
For details please see [License Agreement](https://froala.com/wysiwyg-editor/terms).
