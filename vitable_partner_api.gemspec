# frozen_string_literal: true

require_relative "lib/vitable_partner_api/version"

Gem::Specification.new do |s|
  s.name = "vitable-partner-api"
  s.version = VitablePartnerAPI::VERSION
  s.summary = "Ruby library to access the Vitable Connect API API"
  s.authors = ["Vitable Connect API"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/vitable-partner-api"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/vitable-partner-api-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
