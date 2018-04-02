Pod::Spec.new do |s|
  s.name         = "YufuUIComponents"
  s.version      = "0.0.1"
  s.summary      = "YufuUIComponents"
  s.homepage     = "https://github.com/Wstunes/YufuUIComponents.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Wstunes" => "wangshuogr@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Wstunes/YufuUIComponents.git", :tag => s.version }
  s.source_files = 'Sources/**/*.swift'
  s.dependency 'Kingfisher', '~> 4.6.4'
  s.swift_version = '4.0'
end