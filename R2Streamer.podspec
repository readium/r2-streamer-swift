Pod::Spec.new do |s|

  s.name         = "R2Streamer"
  s.version      = "1.1.1"
  s.summary      = "R2 Streamer"
  s.homepage     = "http://readium.github.io"
  s.license      = "BSD 3-Clause License"
  s.author       = { "Aferdita Muriqi" => "aferdita.muriqi@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/readium/r2-streamer-swift.git", :branch => "develop" }
  s.source_files  = ["r2-streamer-swift/**/*.{m,h,swift}"]
  s.exclude_files = ["**/Info*.plist","**/Carthage/*"]
  s.resources    = ['r2-streamer-swift/Resources/**/*.{otf,js}', 'r2-streamer-swift/Resources/styles/**']
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.swift_version  = "4.2"

  s.libraries =  ['z', 'xml2']

  s.dependency 'R2Shared',      '~> 1.3.1'
  s.dependency 'Fuzi',          '3.1.1'
  s.dependency 'CryptoSwift',   '0.15.0'
  s.dependency 'GCDWebServer',  '3.5.2'
  s.dependency 'Minizip'

end
