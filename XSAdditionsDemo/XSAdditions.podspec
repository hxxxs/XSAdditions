
Pod::Spec.new do |s|

  s.name         = "XSAdditions"
  s.version      = "0.0.3"
  s.summary      = "XSAdditions is class additions"
  s.homepage     = "https://github.com/cedarYellow/XSAdditions"
  s.license      = "MIT"
  s.author             = { "Cedar" => "lychae@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/cedarYellow/XSAdditions.git", :tag => s.version }
  s.source_files  = "XSAdditions", "XSAdditionsDemo/XSAdditions/*.{h,m}"
  s.requires_arc = true

end
