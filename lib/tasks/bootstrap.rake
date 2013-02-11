namespace :bootstrap do 

  desc 'Setup Intl Rights'
  task :setup do

    puts "Welcome to Intl Rights, let's get setup!"
    `cp config/database.yml.example config/database.yml`

    puts "To continue setup, update your config/database.yml file with your local username, and type 'continue'"

    input = STDIN.gets.chomp.downcase
      if input == 'continue'
        puts "Creating and Migrating your database"
        Rake::Task['db:create'].invoke()
        Rake::Task['db:migrate'].invoke()
        Rake::Task['db:seed'].invoke()
      end

    puts "You're good to go! Run 'rails s' & visit http://localhost:3000/ in your browser"

  end

end