#
# Be sure to run `pod lib lint AssetTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AssetTest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AssetTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LeonComponent/AssetTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yumingliang' => 'yumingliang@kaike.la' }
  s.source           = { :git => 'https://github.com/LeonComponent/AssetTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AssetTest/Classes/AssetTest.h'

  s.subspec 'GroupA' do |a|
    a.source_files = 'AssetTest/Classes/GroupA/**/*'
    a.subspec 'GroupA_1' do |a_1|
        a_1.source_files = 'AssetTest/Classes/GroupA/GroupA_1/**/*'
    end
  end

  s.subspec 'GroupB' do |b|
    b.source_files = 'AssetTest/Classes/GroupB/*'
  end

  s.resource_bundles = {
    'AssetTest' => ['AssetTest/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
