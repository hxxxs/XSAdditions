
Pod::Spec.new do |s|

  s.name         = "XSAdditions"
  s.version      = "0.0.5"
  s.summary      = "自己整理的常用系统类拓展"
  s.homepage     = "https://github.com/cedarYellow/XSAdditions"
  s.license      = "MIT"
  s.author             = { "Cedar" => "lychae@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/cedarYellow/XSAdditions.git", :tag => s.version }
  s.source_files  = "XSAdditions", "XSAdditionsDemo/XSAdditionsDemo/XSAdditions/*.{h,m}"
  s.resource     = 'XSAdditionsDemo/XSAdditionsDemo/XSAdditions/XSAdditions.bundle'
  s.requires_arc = true

end
