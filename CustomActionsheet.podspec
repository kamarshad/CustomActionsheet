#
# Be sure to run `pod lib lint CustomActionsheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CustomActionsheet"
  s.version          = "0.1.0"
  s.summary          = "A custom actionsheet, inheriting to UIView."

# This description is used to generate tags and improve search results.
#   * This Componet is replica of actionsheet, inhertiting to UIView. Anybody can customize the appreance of actionsheet with just small effort.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC This CocoaPod provides the custom actionsheet. Don't worry about the detailed part like show/dismiss animation. It handles everything inside itself.
                       DESC

  s.homepage         = "https://github.com/kamarshad/CustomActionsheet"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "mohd kamar shad" => "kamarshad0786@gmail.com" }
  s.source           = { :git => "https://github.com/kamarshad/CustomActionsheet.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/kamarshad'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CustomActionsheet' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
