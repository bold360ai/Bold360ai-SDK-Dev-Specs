# Copyright © 2018 bold360ai(LogMeIn).
# BoldEngine SDK.
#ֿ All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'BoldEngine'
  s.version = '0.0.7'
  s.summary = 'BoldEngine is an SDK that used as chat handler on bold ai.'

  s.description      = <<-DESC
    BoldEngine is an SDK that used as chat handler on bold ai.
                       DESC

  s.homepage         = 'https://github.com/nanorepsdk/NanorepUI/wiki'
  s.license          = ''
  s.author           = 'Bold360'


    # scripts
    # s.script_phases = [
    #   { :name => 'extract-version-from-url',
    #   :script => '${PODS_TARGET_SRCROOT}/scripts/extract-version-from-url.sh ' + s.source["http"].to_s,
    #   :execution_position => :after_compile
    #   }
    # ]

s.source = {
"http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/ios/dev/BoldEngine/BoldEngine_version_v0.0.7.rc1_commit_7dc736b8ec1c3eb8d1546b65dbc0333bc7cb63ad.zip"
}
  
s.vendored_frameworks = 'BoldEngine.framework'
s.requires_arc = true
s.ios.deployment_target  = '10.0'
s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
s.libraries = ['icucore']
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
# Private Pod frameworks
s.dependency 'BoldCore'

end