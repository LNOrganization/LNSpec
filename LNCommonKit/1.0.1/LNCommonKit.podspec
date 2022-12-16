#
# Be sure to run `pod lib lint LNCommonKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LNCommonKit'
  s.version          = '1.0.1'
  s.summary          = '基础库组件，用于基础服务层代码'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  基础库组件，用于基础服务层代码，包括网络、日志、工具类等。还包括app所依赖的第三方库，放在这里方便统一管理
                       DESC

  s.homepage         = 'https://github.com/NoNameOrganazation/LNCommonKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongjianxiong' => 'jianxiong20090919@126.com' }
  s.source           = { :git => 'https://github.com/NoNameOrganazation/LNCommonKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc = true
  
  s.public_header_files = 'LNCommonKit/Classes/*.h'
  s.source_files = 'LNCommonKit/Classes/*'
  
  s.subspec 'Foundation' do |foundation|
    foundation.source_files = 'LNCommonKit/Classes/Foundation/**/*'
    foundation.public_header_files = 'LNCommonKit/Classes/Foundation/*.h'
  end
  s.subspec 'CustomUIKit' do |ui|
    ui.source_files = 'LNCommonKit/Classes/CustomUIKit/**/*'
    ui.public_header_files = 'LNCommonKit/Classes/CustomUIKit/*.h'
    ui.subspec 'ImgLoopScroll' do |ils|
      ils.source_files = 'LNCommonKit/Classes/CustomUIKit/ImgLoopScroll/**/*'
      ils.public_header_files = 'LNCommonKit/Classes/CustomUIKit/ImgLoopScroll/*.h'
    end
  end

  s.subspec 'Router' do |router|
    router.source_files = 'LNCommonKit/Classes/Router/**/*'
    router.public_header_files = 'LNCommonKit/Classes/Router/*.h'
  end
  
  s.subspec 'Network' do |net|
    net.source_files = 'LNCommonKit/Classes/Network/*'
    net.public_header_files = 'LNCommonKit/Classes/Network/*.h'
  end
  s.subspec 'AFNetHTTPClient' do |client|
    client.source_files = 'LNCommonKit/Classes/Network/AFNetHTTPClient/*'
    client.public_header_files = 'LNCommonKit/Classes/Network/AFNetHTTPClient/*.h'
    
    client.dependency 'LNCommonKit/Network'
    client.dependency 'AFNetworking', '~>4.0.1'
  end
#
  s.subspec 'BaseMVC' do |mvc|
    mvc.source_files = 'LNCommonKit/Classes/BaseMVC/**/*'
    mvc.public_header_files = 'LNCommonKit/Classes/BaseMVC/**/*.h'
    mvc.dependency 'LNCommonKit/Network' #依赖网络模块
    mvc.dependency 'LNCommonKit/CustomUIKit' #依赖网络模块
    mvc.dependency 'MJRefresh', '~>3.7.2'
  end
  
  s.subspec 'Log' do |log|
    log.source_files = 'LNCommonKit/Classes/Log/**/*'
    log.public_header_files = 'LNCommonKit/Classes/Log/**/*.h'
  end
  
  s.subspec 'Consttant' do |const|
    const.source_files = 'LNCommonKit/Classes/Consttant/**/*'
    const.public_header_files = 'LNCommonKit/Classes/Consttant/**/*.h'
  end
  
  s.ios.deployment_target = '9.0'

  s.frameworks = 'UIKit', 'Foundation'
  s.library = 'z', 'c++'
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}

end
