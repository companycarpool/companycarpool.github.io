# frozen_string_literal: true

require 'jekyll'
require 'tmpdir'

# Change your GitHub reponame
GITHUB_REPONAME = 'companycarpool/companycarpool.github.io'

desc 'Generate blog files'
task :generate do
  Jekyll::Site.new(Jekyll.configuration(
                     source: '.',
                     destination: '_site',
                     production: true
                   )).process
end

desc 'Generate and publish blog to gh-pages'
task publish: [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r '_site/.', tmp
    Dir.chdir tmp
    system 'git init'
    system 'git add .'
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.shellescape}"
    system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
    system 'git push origin main --force'
  end
end
