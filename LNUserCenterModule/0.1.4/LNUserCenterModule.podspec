#
# Be sure to run `pod lib lint LNUserCenterModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNUserCenterModule'
  s.version          = '0.1.4'
  s.summary          = '个人中心组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  个人中心组件，负责个人中心相关业务开发维护组件。
                       DESC

  s.homepage         = 'https://github.com/LNOrganization/LNUserCenterModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/LNOrganization/LNUserCenterModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LNUserCenterModule/Classes/*'
  s.public_header_files = 'LNUserCenterModule/Classes/*.h'
  
  s.subspec 'Network' do |network|
    network.source_files = 'LNUserCenterModule/Classes/Network/**/*'
    network.public_header_files = 'LNUserCenterModule/Classes/Network/*.h'
  end
  s.subspec 'Data' do |com|
    com.source_files = 'LNUserCenterModule/Classes/Data/**/*'
    com.public_header_files = 'LNUserCenterModule/Classes/Data/*.h'
  end
  s.subspec 'Common' do |com|
    com.source_files = 'LNUserCenterModule/Classes/Common/**/*'
    com.public_header_files = 'LNUserCenterModule/Classes/Common/*.h'
  end
  
  s.subspec 'Feature' do |feature|
    feature.source_files = 'LNUserCenterModule/Classes/Feature/**/*.{h,m}'
    feature.public_header_files = 'LNUserCenterModule/Classes/Feature/**/*.h'
#    feature.resource_bundles = {
#      'LNUserCenterModule' => ['LNUserCenterModule/Classes/Feature/**/*.xib', 'LNUserCenterModule/Classes/Resource/**/*.{png,jpg,jpeg}']
#    }
    feature.dependency 'LNUserCenterModule/Network'
    feature.dependency 'LNUserCenterModule/Common'
    feature.dependency 'LNUserCenterModule/Data'
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNUserCenterModule/Classes/Mediator/**/*'
    mediator.dependency 'LNUserCenterModule/Feature'
  end
  
  #私有库
  s.dependency 'LNModuleProtocol'
  s.dependency 'LNCommonKit'
  
  #公有库
  s.dependency 'SDWebImage', '~>5.9.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
