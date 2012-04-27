require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)

@home = ENV['HOME']

task :default => [:install]

task :install do
	pwd = Dir.pwd
	puts `cp -rf .vim ~/`
	puts `cp .vimrc ~/`
	puts `mkdir ~/.vim_swap`
	puts `mkdir ~/.vim_backup`
	puts `gem install gem-ctags`
	puts `gem ctags`
	Dir.chdir(File.expand_path '~/.vim/bundle/Command-T')
	`bundle install`
	`rake make`
	Dir.chdir(File.expand_path pwd)
end

task :uninstall do 
	puts `rm ~/.vim -rf`
	puts `rm ~/.vimrc`
end

task :submodules do
	plugins = File.open("plugins.txt").read.split("\n")
	plugins.each do |x|
		name = File.basename(x).sub('.git', '')
		puts "git submodule add #{x} .vim/bundle/#{name}"
		`git submodule add #{x} .vim/bundle/#{name}`
	end
end
