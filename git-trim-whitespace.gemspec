# encoding: utf-8
Gem::Specification.new do |gem|
  gem.name    = 'git-trim-whitespace'
  gem.version = '0.1'
  gem.executables = %w[ trim_whitespace ]
  
  gem.summary = "Trim whitespaces on git checkins"
  gem.description = "A native whitespace trimmer tool for git checkins"
  
  gem.authors  = ['@radiospiel']
  gem.email    = 'eno@open-lab.org'
  gem.homepage = 'https://github.com/radiospiel/git-trim-whitespace'

  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec,src}/**/*', 'README*', 'LICENSE*'] & `git ls-files`.split("\n")
  
  gem.post_install_message = 'Make sure you setup the trim-whitespace package correctly; i.e. run "git-trim-whitespace setup"'
end
