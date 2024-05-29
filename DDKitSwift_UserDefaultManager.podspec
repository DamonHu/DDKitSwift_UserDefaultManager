Pod::Spec.new do |s|
s.name = 'DDKitSwift_UserDefaultManager'
s.swift_version = '5.0'
s.version = '3.0.1'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'UserDefaultManager plugin for ZXKit, build by ZXUserDefaultManager'
s.homepage = 'https://github.com/DamonHu/DDKitSwift_UserDefaultManager'
s.authors = { 'DamonHu' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/DDKitSwift_UserDefaultManager.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '12.0'
s.resource_bundles = {
    'DDKitSwift_UserDefaultManager' => ['pod/assets/**/*']
}
s.source_files = "pod/*.swift"
s.dependency 'DDKitSwift/core', '~> 3.0.0'
s.dependency 'DDUserDefaultManager', '~> 3.0.0'
s.documentation_url = 'https://github.com/DamonHu/DDKitSwift_UserDefaultManager'
end
