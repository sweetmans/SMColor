#
# Be sure to run `pod lib lint SMColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMColor'
  s.version          = '0.1.0'
  s.summary          = 'UIColor Extension provice most popular builded color.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Features

 Categories for UIColor
 So easy to use.
 Support Swift 3.0
 Performances!
 Use GCD and ARC
Requirements

iOS 10.0 or later
watchOS 3.0 or later
OS X 12.0 or later
Xcode 8.0 or later
Getting Started
                       DESC

  s.homepage         = 'https://github.com/sweetmans/SMColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sweetmans' => 'ceo@sweetman.cc' }
  s.source           = { :git => 'https://github.com/sweetmans/SMColor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SMColor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SMColor' => ['SMColor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
