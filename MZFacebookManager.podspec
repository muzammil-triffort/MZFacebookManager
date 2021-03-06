#
# Be sure to run `pod lib lint MZFacebookManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'MZFacebookManager'
s.version          = '1.0.7'
s.summary          = 'Facebook Login Manager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = 'You can easily login inside Facebook'

s.homepage         = 'https://github.com/muzammil-triffort/MZFacebookManager'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'muzammil-triffort' => 'muzammil@triffort.com' }
s.source           = { :git => 'https://github.com/muzammil-triffort/MZFacebookManager.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.source_files = 'MZFacebookManager/Classes/**/*'

# s.resource_bundles = {
#   'MZFacebookManager' => ['MZFacebookManager/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
#	 s.frameworks = 'UIKit'

# If you framework is dependent on any other framework. While installing Pods it will install these libraries as well.
s.dependency 'FBSDKLoginKit'
s.dependency 'FBSDKCoreKit'


end
