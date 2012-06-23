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
end

task :uninstall do 
	puts `rm ~/.vim -rf`
	puts `rm ~/.vimrc`
end
