project 'ForFlipper.xcodeproj'
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
flipperkit_version = '0.156.0'
swift_version = "5.6.1"

target 'ForFlipper' do
  platform :ios, '10.0'

  # See docs/getting-started/ios-native.mdx
  pod 'FlipperKit', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitLayoutComponentKitSupport', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/SKIOSNetworkPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitUserDefaultsPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitExamplePlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitReactPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'Flipper', :configuration => 'Debug'
  pod 'Flipper-DoubleConversion', :configuration => 'Debug'
  pod 'Flipper-Folly', :configuration => 'Debug'
  pod 'Flipper-Glog', :configuration => 'Debug'
  pod 'Flipper-PeerTalk', :configuration => 'Debug'
  pod 'libevent', :configuration => 'Debug'
  pod 'Flipper-Boost-iOSX', :configuration => 'Debug'
  pod 'OpenSSL-Universal', :configuration => 'Debug'
  pod 'CocoaAsyncSocket', :configuration => 'Debug'
  pod 'ComponentKit', '~> 0.31'
  pod 'SocketRocket', '~> 0.6.0'
  
end

#target 'ForFlipper' do
#  platform :ios, '10.0'
#
#  pod 'FlipperKit', '~>' + flipperkit_version
#  pod 'FlipperKit/FlipperKitLayoutComponentKitSupport', '~>' + flipperkit_version
#  pod 'FlipperKit/SKIOSNetworkPlugin', '~>' + flipperkit_version
#  pod 'FlipperKit/FlipperKitUserDefaultsPlugin', '~>' + flipperkit_version
#  # This post_install script adds swift version to yogakit's pod target.
#  # It also adds -DFB_SONARKIT_ENABLED=1 flag to OTHER_CFLAGS, necessary to build expose Flipper classes in the header files
#  post_install do |installer|
#        installer.pods_project.targets.each do |target|
#            if ['YogaKit'].include? target.name
#                target.build_configurations.each do |config|
#                    config.build_settings['SWIFT_VERSION'] = swift_version
#                end
#            end
#        end
#        file_name = Dir.glob("*.xcodeproj")[0]
#        app_project = Xcodeproj::Project.open(file_name)
#        app_project.native_targets.each do |target|
#            target.build_configurations.each do |config|
#              if (config.build_settings['OTHER_CFLAGS'])
#                if !(config.build_settings['OTHER_CFLAGS'].include? '-DFB_SONARKIT_ENABLED=1')
#                  puts 'Adding -DFB_SONARKIT_ENABLED=1 in OTHER_CFLAGS...'
#                  config.build_settings['OTHER_CFLAGS'] << '-DFB_SONARKIT_ENABLED=1'
#                end
#              else
#                puts 'OTHER_CFLAGS does not exist, assigining it to `$(inherited), -DFB_SONARKIT_ENABLED=1` '
#                config.build_settings['OTHER_CFLAGS'] = '$(inherited) -DFB_SONARKIT_ENABLED=1 '
#              end
#              app_project.save
#            end
#        end
#   end
#end
