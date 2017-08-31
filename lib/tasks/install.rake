namespace :guild do
  namespace :rubocop do
    desc 'Install the Guild RuboCop config to .rubocop.yml'
    task :install do
      require 'yaml'

      if File.exist?('.rubocop.yml')
        STDOUT.puts "Warning: this will blow away your existing .rubocop.yml!"
        STDOUT.print "Do you wish to continue? (y/n) "
        exit if STDIN.gets.strip.downcase != 'y'
      end

      File.open('.rubocop.yml', 'w') do |f|
        f.write({
          'inherit_gem' => {
            'rubocop-guild' => ['config/guild.yml']
          }
        }.to_yaml.gsub("---\n", ''))
      end
    end
  end
end
