#
# Be sure to run `pod lib lint NeblioAPI.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "NeblioAPI"
    s.version          = "1.2.1"

    s.summary          = "Neblio REST API Suite"
    s.description      = <<-DESC
                         APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/NeblioTeam/neblio-api-lib-objective-c"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/NeblioTeam/neblio-api-lib-objective-c.git", :tag => "#{s.version}" }
    s.author       = { "OpenAPI" => "team@openapitools.org" }

    s.source_files = 'NeblioAPI/**/*.{m,h}'
    s.public_header_files = 'NeblioAPI/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

