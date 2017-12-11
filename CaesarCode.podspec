# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "CaesarCode"
  s.version      = "0.0.3"
  s.summary      = "凯撒加密算法"

  s.description  = <<-DESC
                  该SDK实现了凯撒加密算法，这是一种简单的字母置换的加密码方法
                   DESC

  s.homepage     = "https://github.com/lazyjean/CaesarCode"
  s.author       = { "liuzhen" => "lazyjean@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.license      = ""
  s.source       = { :git => "https://github.com/lazyjean/CaesarCode.git", :tag => "#{s.version}" }
  s.source_files = "CaesarCode", "CaesarCode/**/*.{h,m}"
  s.public_header_files = "CaesarCode/*.h"
end
