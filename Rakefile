require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)

@home = ENV['HOME']

exit

task :default => [:install]

task :install do
	`cp .vim ~/ -rf`
	`cp .vimrc ~/.vimrc`
end

task :uninstall do 
	`rm ~/.vim -rf`
	`rm ~/.vimrc`
end

