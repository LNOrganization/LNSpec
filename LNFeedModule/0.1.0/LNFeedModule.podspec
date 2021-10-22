#
# Be sure to run `pod lib lint LNFeed.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNFeedModule'
  s.version          = '0.1.0'
  s.summary          = 'Feed流模块.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
实现feed流模块.
                       DESC
                       #  https://github.com/NoNameOrganazation/LNFeed.git
  s.homepage         = 'https://github.com/NoNameOrganazation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/NoNameOrganazation/LNFeedModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files =  'LNFeedModule/Classes/*'
  s.public_header_files = 'LNFeedModule/Classes/*.h'
  
  s.subspec 'UIKit' do |uikit|
    uikit.source_files = 'LNFeedModule/Classes/UIKit/**/*'
    uikit.public_header_files = 'LNFeed/Classes/UIKit/*.h'
  end
  
  s.subspec 'Router' do |router|
    router.source_files = 'LNFeedModule/Classes/Router/**/*'
    router.public_header_files = 'LNFeedModule/Classes/Router/*.h'
  end
  
  s.subspec 'Common' do |common|
    common.source_files = 'LNFeedModule/Classes/Common/**/*'
    common.public_header_files = 'LNFeedModule/Classes/Common/*.h'
  end
  
  s.subspec 'Base' do |base|
    base.source_files = 'LNFeedModule/Classes/Base/**/*'
    base.public_header_files = 'LNFeedModule/Classes/Base/*.h'
    # 自有subspec
    base.dependency 'LNFeedModule/UIKit'
    base.dependency 'LNFeedModule/Router'
    base.dependency 'LNFeedModule/Common'
    # 公有库
    base.dependency 'MJRefresh'
    base.dependency 'SDWebImage'
  end
  
  s.subspec 'Feed' do |feed|
    feed.source_files = 'LNFeedModule/Classes/Feed/**/*'
    feed.public_header_files = 'LNFeedModule/Classes/Feed/*.h'
    feed.subspec 'BaseFeed' do |base|
      base.source_files = 'LNFeedModule/Classes/Feed/BaseFeed/**/*'
      base.public_header_files = 'LNFeed/Classes/Feed/BaseFeed/*.h'
      base.dependency 'LNFeedModule/Base'
      base.dependency 'LNFeedModule/Topic'
    end
    
    feed.subspec 'FeedDetail' do |detail|
      detail.source_files = 'LNFeedModule/Classes/Feed/FeedDetail/**/*'
      detail.public_header_files = 'LNFeedModule/Classes/Feed/FeedDetail/*.h'
      detail.dependency 'LNFeedModule/Feed/BaseFeed'
    end
    
    feed.subspec 'Recommend' do |recommend|
      recommend.source_files = 'LNFeedModule/Classes/Feed/Recommend/**/*'
      recommend.public_header_files = 'LNFeedModule/Classes/Feed/Recommend/*.h'
      recommend.dependency 'LNFeedModule/Feed/BaseFeed'
    end
    
    feed.subspec 'TimeLine' do |timeLine|
      timeLine.source_files = 'LNFeedModule/Classes/Feed/TimeLine/**/*'
      timeLine.public_header_files = 'LNFeedModule/Classes/Feed/TimeLine/*.h'
      timeLine.dependency 'LNFeedModule/Feed/BaseFeed'
    end
  end
  
  s.subspec 'Topic' do |topic|
    topic.source_files = 'LNFeedModule/Classes/Topic/**/*'
    topic.public_header_files = 'LNFeedModule/Classes/Topic/*.h'
    topic.dependency 'LNFeedModule/Base'
  end
  
  s.subspec 'Mediator' do |mediator|
    mediator.source_files = 'LNFeedModule/Classes/Mediator/**/*'
    mediator.dependency 'LNFeedModule/Router'
    mediator.dependency 'LNFeedModule/Feed'
    mediator.dependency 'LNFeedModule/Topic'
  end
  
  s.dependency 'LNModuleProtocol'
  s.dependency 'LNModuleCore'
  s.dependency 'LNLogin'

  # s.resource_bundles = {
  #   'LNFeed' => ['LNFeed/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   
end
