require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |spec|
  spec.name                   = "react-native-yoti-doc-scan"
  spec.version                = package["version"]
  spec.summary                = package["description"]
  spec.description            = package["description"]
  spec.license                = package["license"]
  spec.author                 = package["author"]
  spec.homepage               = "https://github.com/getyoti/yoti-doc-scan-react-native"
  spec.source                 = { :git => "https://github.com/getyoti/yoti-doc-scan-react-native.git", :tag => "#{spec.version}" }
  spec.source_files           = "ios/**/*.{h,m}"
  spec.platform               = :ios, "13.0"
  spec.dependency             "React"
  spec.dependency             "YotiSDKDocument", "3.0.3"
  spec.dependency             "YotiSDKFaceTec", "3.0.3"
end
