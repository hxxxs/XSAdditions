
Pod::Spec.new do |s|
  s.name             = 'XSAdditions'
  s.version          = '0.2.6'
  s.summary          = 'OC 拓展'

  s.homepage         = 'https://github.com/hxxxs'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cedar' => 'lychae@foxmail.com' }
  s.source           = { :git => 'https://github.com/hxxxs/XSAdditions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'XSAdditions/Classes/**/*'

end
