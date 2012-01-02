Gem::Specification.new do |gem|
  gem.name = 'rsword'
  gem.version = '0.1.0'
  gem.date = Date.today.to_s

  gem.signing_key = '/home/cowanb/.ssh/gem-private_key.pem'
  gem.cert_chain  = ['/home/cowanb/.ssh/gem-public_cert.pem']	

  gem.summary = "Ruby bindings for Sword, Revision 2674"
  gem.description = "Ruby bindings for Sword, require 'rsword' and use Sword as the Module"

  gem.author = 'Brian Cowan'
  gem.email = 'brianlovesjesus@perffection.com'
  gem.homepage = 'http://github.com/brianlovesjesus/rsword'

  gem.files = Dir['ext/*','README'] #& `git ls-files -z`.split("\0")

  gem.extensions="ext/extconf.rb"
  gem.post_install_message  = "Jesus is Lord!";
end
