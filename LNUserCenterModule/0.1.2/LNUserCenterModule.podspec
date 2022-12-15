#
# Be sure to run `pod lib lint LNUserCenterModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNUserCenterModule'
  s.version          = '0.1.2'
  s.summary          = 'A short description of LNUserCenterModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/NoNameOrganazation/LNUserCenterModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/NoNameOrganazation/LNUserCenterModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LNUserCenterModule/Classes/**/*'
  s.subspec 'Network' do |network|
    network.source_files = 'LNUserCenterModule/Classes/Network/**/*'
    network.public_header_files = 'LNUserCenterModule/Classes/Network/*.h'
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
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNUserCenterModule/Classes/Mediator/**/*'
    mediator.dependency 'LNUserCenterModule/Feature'
  end
  
  s.dependency 'LNModuleProtocol', '0.1.5'
  s.dependency 'LNCommonKit', '0.1.8'
  

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
