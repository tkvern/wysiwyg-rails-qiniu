# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wysiwyg-rails-qiniu/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["tkvern"]
  gem.email         = ["tkvern@qq.com"]
  gem.description   = "A base on jQuery WYSIWYG HTML text editor.Thanks for authorship-- stefanneculai. Please support him"
  gem.summary       = "Support Qiniu storage"
  gem.homepage      = "https://github.com/tkvern/wysiwyg-rails-qiniu"
  gem.licenses      = ["MIT"]

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENSE" ,"Rakefile", "README.md"]
  gem.name          = "wysiwyg-rails-qiniu"
  gem.require_paths = ["lib"]
  gem.version       = WYSIWYG::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.0"
  gem.add_dependency "font-awesome-rails", '~> 4.4', ">= 4.4.0.0"
end
