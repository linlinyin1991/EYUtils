Pod::Spec.new do |s|

  s.name         = "EYUtils"
  s.version      = "2.0.1"
  s.summary      = "EYUtils is a basic tools"
  s.description  = <<-DESC
    EYUtils is a basic tools,such as Category for common objects
                   DESC

  s.homepage         = 'https://github.com/linlinyin1991/ELUtility'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'ElaineYin' => 'linlinyin1991@163.com' }
  s.source       = { :git => 'https://github.com/linlinyin1991/ELUtility.git', :tag => '#{s.version}' }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.frameworks = 'UIKit'
  s.public_header_files = 'EYUtils/EYUtils.h'
  s.source_files  = 'EYUtils/EYUtils.h'
  
  s.subspec 'Date' do |spec|
      spec.source_files = 'EYUtils/Category/{NSDate,NSCalendar,NSDateFormatter}+*.{h,m}'
  end
  s.subspec 'String' do |spec|
      spec.source_files = 'EYUtils/Category/{NSString,NSMutableString}+*.{h,m}'
  end
  s.subspec 'Color' do |spec|
      spec.source_files = 'EYUtils/Category/UIColor+*.{h,m}'
  end
  s.subspec 'Image' do |spec|
      spec.source_files = 'EYUtils/Category/UIImage+*.{h,m}'
  end
  s.subspec 'View' do |spec|
      spec.source_files = 'EYUtils/Category/UIView+*.{h,m}'
  end
  s.subspec 'Macro' do |spec|
      spec.source_files = 'EYUtils/Macro/*.{h,m}'
  end
  s.subspec 'Number' do |spec|
      spec.source_files = 'EYUtils/Category/NSNumber+*.{h,m}'
  end

end
