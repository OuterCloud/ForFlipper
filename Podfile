# Uncomment the next line to define a global platform for your project
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
flipperkit_version = '0.156.0'

target 'ForFlipper' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  platform :ios, '10.0'

  # Pods for ForFlipper —— According to the tutorial: https://fbflipper.com/docs/getting-started/ios-native/
  # It is likely that you'll only want to include Flipper in debug builds,
  # in which case you add the `:configuration` directive:
  
  # It is likely that you'll only want to include Flipper in debug builds,
  # in which case you add the `:configuration` directive:
  pod 'FlipperKit', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitLayoutComponentKitSupport', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/SKIOSNetworkPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  pod 'FlipperKit/FlipperKitUserDefaultsPlugin', '~>' + flipperkit_version, :configuration => 'Debug'
  # ...unfortunately at this time that means you'll need to explicitly mark
  # transitive dependencies as being for debug build only as well:
  pod 'Flipper-DoubleConversion', :configuration => 'Debug'
  pod 'Flipper-Folly', :configuration => 'Debug'
  pod 'Flipper-Glog', :configuration => 'Debug'
  pod 'Flipper-PeerTalk', :configuration => 'Debug'
  pod 'CocoaLibEvent', :configuration => 'Debug'
  pod 'boost-for-react-native', :configuration => 'Debug'
  pod 'OpenSSL-Universal', :configuration => 'Debug'
  pod 'CocoaAsyncSocket', :configuration => 'Debug'
  # ...except, of course, those transitive dependencies that your
  # application itself depends, e.g.:
  pod 'ComponentKit', '~> 0.31'

  # If you use `use_frameworks!` in your Podfile,
  # uncomment the below $static_framework array and also
  # the pre_install section.  This will cause Flipper and
  # it's dependencies to be built as a static library and all other pods to
  # be dynamic.
  #
  # NOTE Doing this may lead to a broken build if any of these are also
  #      transitive dependencies of other dependencies and are expected
  #      to be built as frameworks.
  #
  $static_framework = ['FlipperKit', 'Flipper', 'Flipper-Folly',
    'CocoaAsyncSocket', 'ComponentKit', 'Flipper-DoubleConversion',
    'Flipper-Glog', 'Flipper-PeerTalk', 'Flipper-RSocket', 'Yoga', 'YogaKit',
    'CocoaLibEvent', 'OpenSSL-Universal', 'boost-for-react-native', 'Flipper-Fmt']

  pre_install do |installer|
    Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
    installer.pod_targets.each do |pod|
        if $static_framework.include?(pod.name)
          def pod.build_type;
            Pod::BuildType.static_library
          end
        end
      end
  end

  target 'ForFlipperTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ForFlipperUITests' do
    # Pods for testing
  end

end
