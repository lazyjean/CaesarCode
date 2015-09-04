Pod::Spec.new do |s|
  s.name         = "CaesarCode"
  s.version      = "0.0.1"
  s.summary      = "凯撒加密算法"

  s.description  = <<-DESC
                  该SDK实现了凯撒加密算法，这是一种简单的字母置换的加密码方法
                   DESC

  s.homepage     = "http://git.oschina.net/leeszi/CaesarCode/wikis/home"
  s.license      = "MIT"
  s.author       = { "Liu Zhen" => "lazy66@me.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://git.oschina.net/leeszi/CaesarCode.git", :tag => "#{s.version}" }
  s.source_files = "CaesarCode", "CaesarCode/**/*.{h,m}"
  s.public_header_files = "CaesarCode/*.h"
end
