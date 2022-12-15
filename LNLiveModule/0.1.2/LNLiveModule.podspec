#
# Be sure to run `pod lib lint LNLiveModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNLiveModule'
  s.version          = '0.1.2'
  s.summary          = '直播组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
直播组件，开发和维护直播相关功能模块
                       DESC

  s.homepage         = 'https://github.com/NoNameOrganazation/LNLiveModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/NoNameOrganazation/LNLiveModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LNLiveModule/Classes/**/*'
  s.public_header_files = 'LNLiveModule/Classes/*.h'
  
  s.subspec 'Network' do |network|
    network.source_files = 'LNLiveModule/Classes/Network/**/*'
    network.public_header_files = 'LNLiveModule/Classes/Network/*.h'
  end
  
  s.subspec 'Common' do |base|
    base.source_files = 'LNLiveModule/Classes/Common/**/*'
    base.public_header_files = 'LNLiveModule/Classes/Common/*.h'
  end
  
  s.subspec 'Feature' do |feature|
    feature.source_files = 'LNLiveModule/Classes/Feature/**/*.{h,m}'
    feature.public_header_files = 'LNLiveModule/Classes/Feature/**/*.h'
#    feature.resource_bundles = {
#      'LNLiveModule' => ['LNLiveModule/Classes/Feature/**/*.xib', 'LNLiveModule/Classes/Resource/**/*.{png,jpg,jpeg}']
#    }
    feature.dependency 'LNLiveModule/Common'
    feature.dependency 'LNLiveModule/Network'
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNLiveModule/Classes/Mediator/**/*'
    mediator.dependency 'LNLiveModule/Feature'
  end
  
  s.dependency 'LNModuleProtocol', '0.1.5'
  s.dependency 'LNCommonKit', '0.1.8'
  
  
  # s.resource_bundles = {
  #   'LNLiveModule' => ['LNLiveModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
