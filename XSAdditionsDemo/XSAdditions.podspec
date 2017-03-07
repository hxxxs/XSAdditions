
Pod::Spec.new do |s|

  s.name         = "XSAdditions"
  s.version      = "0.0.2"
  s.summary      = "Foundation框架常用类拓展（持续更新）"
  s.homepage     = "https://github.com/cedarYellow/XSAdditions"
  s.license      = "MIT"
  s.author             = { "Cedar" => "lychae@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/cedarYellow/XSAdditions.git", :tag => s.version }
  s.source_files  = "XSAdditions", "XSAdditionsDemo/XSAdditions/*.{h,m}"
  s.requires_arc = true

end
