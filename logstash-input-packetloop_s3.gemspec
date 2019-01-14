Gem::Specification.new do |s|
  s.name          = 'logstash-input-packetloop_s3'
  s.version       = '0.1.0'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'A fork of Logstash S3 input that contains a temporary fix with processing Cloudwatch logs from S3 bucket.'
  s.description   = 'A fork of Logstash S3 input that contains a temporary fix with processing Cloudwatch logs from S3 bucket until https://github.com/logstash-plugins/logstash-input-s3/issues/165 PR is merged'
  s.homepage      = 'https://github.com/packetloop/logstash-input-packetloop_s3'
  s.authors       = ['Mayhem']
  s.email         = 'mayhem@arbor.net'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
end
