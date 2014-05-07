Pod::Spec.new do |s|
  s.name     = 'JSON-Schema-Test-Suite'
  s.version  = '1.1.2-Pod'
  s.license  = 'MIT'
  s.summary  = 'A set of JSON objects that implementors of JSON Schema validation libraries can use to test their validators.'
  s.homepage = "https://github.com/json-schema/JSON-Schema-Test-Suite"
  s.author   = { "Julian Berman" => "no_email_available@mailinator.com" }

  s.source   = { :git => "https://github.com/grgcombs/JSON-Schema-Test-Suite.git", :tag => "#{s.version}" }

  s.description = %{
    This repository contains a set of JSON objects that implementors of JSON Schema validation libraries can use to test their validators.
    It is meant to be language agnostic and should require only a JSON parser.
    The conversion of the JSON objects into tests within your test framework of choice is still the job of the validator implementor.
  }

# s.source_files = '{tests,remotes}/{**,*.json}'
  s.ios.exclude_files = "tests/{draft3,draft4}/optional/zeroTerminatedFloats.json"
  s.osx.exclude_files = "tests/{draft3,draft4}/optional/zeroTerminatedFloats.json"

  s.resource_bundles = { 'JSON-Schema-Test-Suite' => '{tests,remotes}/{**,*.json}',
                         'JSON-Schema-Test-Suite-v4' => 'tests/draft4/{**,*.json}' }
                         
  s.exclude_files = "tests/draft4/optional/zeroTerminatedFloats.json"

  s.ios.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.osx.platform = :osx, '10.9'
  s.osx.deployment_target = '10.9'
end
