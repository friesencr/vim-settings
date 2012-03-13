require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)

@home = ENV['HOME']

task :default => [:install]

task :install do
	puts `cp .vim ~/ -rf`
	puts `cp .vimrc ~/.vimrc`
	puts `gem install gem-ctags`
	puts `gem ctags`
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
