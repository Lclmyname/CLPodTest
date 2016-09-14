Pod::Spec.new do |s|
  s.name         = "CLPodTest"
  s.version      = "0.0.1"
  s.summary      = "一个Pod开源库的实例"
  s.description  = <<-DESC
                    一个Pod开源库的实例,11111111
                   DESC

  s.homepage     = "https://github.com/Lclmyname/CLPodTest"
  s.license      = "MIT"
  s.author             = { "刘朝龙" => "1097920539@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Lclmyname/CLPodTest.git", :tag => "0.0.1" }

  s.source_files  = "CLNetRequest", "CLNetRequest/**/*.{h,m}"
  s.exclude_files = "CLNetRequest/CLPodDemo"

  s.public_header_files = "CLNetRequest/**/*.h"

  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true

  s.dependency "AFNetworking"

end
