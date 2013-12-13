#
#  Be sure to run `pod spec lint UIImageCompress.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "UIImage+ImageCompress"
  s.version      = "0.0.1"
  s.summary      = "Easy compression of images for UIImage class"
  s.description  = %{ 
                    UIImageCompress is an easy drop in category to compress UIImages on iOS
                   }
  s.homepage     = "https://github.com/IcaliaLabs/UIImage-ImageCompress"
  s.license      = 'MIT'
  s.author       = { "Abraham Kuri" => "kurenn@icalialabs.com" }
  s.platform     = :ios
  s.source       = { :git => "git@github.com:IcaliaLabs/UIImage-ImageCompress.git", :tag => "0.0.1" }
  s.source_files  = '*.{h,m}'
end
