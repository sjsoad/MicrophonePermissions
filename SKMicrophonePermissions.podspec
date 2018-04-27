Pod::Spec.new do |s|

# 1
s.platform = :ios
s.swift_version = '4.0'
s.ios.deployment_target = '10.0'
s.name = "SKMicrophonePermissions"
s.summary = "MicrophonePermissions allows you to check Microphone permissions"
s.requires_arc = true

# 2
s.version = "0.0.2"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Serhii Kostian" => "skostyan666@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/sjsoad/MicrophonePermissions"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/sjsoad/MicrophonePermissions.git", :tag => "#{s.version}"}

# 7
s.framework = "AVFoundation"

# 8
s.source_files = "MicrophonePermissions/**/*.{swift}"

#10
s.dependency 'SKServicePermissions'

end
