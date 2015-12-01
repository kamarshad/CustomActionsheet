#
# Be sure to run `pod lib lint CustomActionsheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CustomActionsheet"
  s.version          = "0.1.1"
  s.summary          = "A custom actionsheet base class of UIView."

  s.description      = "This CocoaPod provides the custom actionsheet.
                       Don't worry about the detailed part like show/dismiss animation.
                       It handles everything inside itself."

  s.homepage         = "https://github.com/kamarshad/CustomActionsheet"
  s.license          = 'MIT'
  s.author           = { "kamarshad" => "kamarshad0786@gmail.com" }
  s.source           = { :git => "https://github.com/kamarshad/CustomActionsheet.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kamarshad'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CustomActionsheet' => ['Pod/Assets/*.png','Pod/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
