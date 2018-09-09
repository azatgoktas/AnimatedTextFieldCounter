#
# Be sure to run `pod lib lint AnimatedTextFieldCounter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimatedTextFieldCounter'
  s.version          = '0.1.0'
  s.summary          = 'Simple Animated Text Field Counter With Max Limit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Simple Animated Text Field Counter With Max Limit. Set your limit and let it do the rest.
                       DESC

  s.homepage         = 'https://github.com/azatgoktas/AnimatedTextFieldCounter'
  s.screenshots     = 'https://github.com/azatgoktas/AnimatedTextFieldCounter/blob/master/ScreenShots/setup.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Azat Göktaş' => 'azattgoktas@gmail.com' }
  s.source           = { :git => 'https://github.com/azatgoktas/AnimatedTextFieldCounter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '3.0'
  s.source_files = 'AnimatedTextFieldCounter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AnimatedTextFieldCounter' => ['AnimatedTextFieldCounter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
