#
# Be sure to run `pod lib lint GlowingTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GlowingTextField'
  s.version          = '0.1.0'
  s.summary          = 'A light weight library for making textfields look fancier.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/farukTheDev/GlowingTextField'
  s.screenshots     = 'https://imgur.com/a/63mSDRk' #'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'farukTheDev' => 'farukkisik.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/farukTheDev/GlowingTextField.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GlowingTextField/Classes/**/*'
  
  s.resource_bundles = {
     'GlowingTextField' => ['GlowingTextField/Assets/*.png', 'GlowingTextField/Classes/**/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
