Pod::Spec.new do |spec|
  spec.name         = 'TXLiteAVSDK_TRTC'
  spec.version      = '10.5.11726'
  spec.platform     = :ios 
  spec.ios.deployment_target = '8.0'
  spec.license      = { :type => 'Proprietary',
			:text => <<-LICENSE
				copyright 2017 tencent Ltd. All rights reserved.
				LICENSE
			 }
  spec.homepage     = 'https://cloud.tencent.com/product/trtc'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/647/32173'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TXLiteAVSDK for TRTC Edition.'
  spec.ios.framework = ['AVFoundation', 'Accelerate', 'MetalKit', 'AudioToolbox', 'VideoToolbox', 'CoreTelephony', 'ReplayKit', 'SystemConfiguration', 'CoreServices']
  spec.library = 'c++', 'resolv'
  spec.requires_arc = true

  spec.source = { :http => 'https://liteav.sdk.qcloud.com/download/releases/10.5/TXLiteAVSDK_TRTC_iOS_10.5.11726_SDK_en.zip' }

  spec.default_subspec = 'TRTC'

  spec.subspec 'TRTC' do |trtc|
    trtc.preserve_paths = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC.framework'
    trtc.source_files = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC.framework/Headers/*.h'
    trtc.public_header_files = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC.framework/Headers/*.h'
    trtc.vendored_frameworks = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC.framework', 'TXLiteAVSDK_TRTC/TXSoundTouch.xcframework', 'TXLiteAVSDK_TRTC/TXFFmpeg.xcframework'
    trtc.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC.framework/Headers/'}
  end

  spec.subspec 'ReplayKitExt' do |replaykit|
    replaykit.ios.deployment_target = '10.0'
    replaykit.preserve_paths = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_ReplayKitExt.framework'
    replaykit.source_files = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_ReplayKitExt.framework/Headers/*.h'
    replaykit.public_header_files = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_ReplayKitExt.framework/Headers/*.h'
    replaykit.vendored_frameworks = 'TXLiteAVSDK_TRTC/TXLiteAVSDK_ReplayKitExt.framework'
    replaykit.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TXLiteAVSDK_TRTC/TXLiteAVSDK_TRTC/TXLiteAVSDK_ReplayKitExt.framework/Headers/'}
  end

end
