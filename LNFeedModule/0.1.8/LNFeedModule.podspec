#
# Be sure to run `pod lib lint LNFeed.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNFeedModule'
  s.version          = '0.1.8'
  s.summary          = 'Feed流模块.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
实现feed流模块.
                       DESC
  s.homepage         = 'https://github.com/LNOrganization/LNFeedModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/LNOrganization/LNFeedModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files =  'LNFeedModule/Classes/*'
  s.public_header_files = 'LNFeedModule/Classes/*.h'
  
  s.subspec 'Network' do |network|
    network.source_files = 'LNFeedModule/Classes/Network/**/*'
    network.public_header_files = 'LNFeedModule/Classes/Network/*.h'
  end
  
  s.subspec 'Common' do |common|
    common.source_files = 'LNFeedModule/Classes/Common/**/*'
    common.public_header_files = 'LNFeedModule/Classes/Common/*.h'
  end
  
  s.subspec 'Data' do |data|
    data.source_files = 'LNFeedModule/Classes/Data/**/*'
    data.public_header_files = 'LNFeedModule/Classes/Data/*.h'
  end
  
  s.subspec 'CustomUIKit' do |uikit|
    uikit.source_files = 'LNFeedModule/Classes/CustomUIKit/**/*'
    uikit.public_header_files = 'LNFeed/Classes/CustomUIKit/*.h'
  end
  
  s.subspec 'Feature' do |feature|
    feature.source_files = 'LNFeedModule/Classes/Feature/**/*.{h,m}'
    feature.public_header_files = 'LNFeedModule/Classes/Feature/**/*.h'
    feature.resource_bundles = {
      'LNFeedModule' => ['LNFeedModule/Classes/Feature/**/*.xib']
    }
    feature.dependency 'LNFeedModule/CustomUIKit'
    feature.dependency 'LNFeedModule/Common'
    feature.dependency 'LNFeedModule/Network'
    feature.dependency 'LNFeedModule/Data'
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNFeedModule/Classes/Mediator/**/*'
    mediator.dependency 'LNFeedModule/Feature'
  end
  
#  #私有库
  s.dependency 'LNModuleProtocol'
  s.dependency 'LNCommonKit'
  
  #公有库
  s.dependency 'SDWebImage', '~>5.9.0'
  s.dependency 'JSONModel', '~>1.8.0'
  s.dependency 'MBProgressHUD', '~> 1.0.0'

#  s.dependency 'Masonry', '~>1.1.0'
#  s.dependency 'CocoaAsyncSocket', '~>7.6.5'
#  s.dependency 'Aspects', '~>1.4.1'


#   s.resource_bundles = {
#     'LNFeed' => ['LNFeed/Assets/*.png']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   
end
