namespace :db do
  desc "Create the database"
  task :setup do
    require 'pg'

    # Connects to the local postgres database
    # Needs a DATABASE_HOST env variable or you can pass your own as the first
    # argument.
    #
    # Example: postgres://postgres@localhost:5432
    db_url = ENV.fetch('DATABASE_HOST', ARGV[1])

    if db_url.nil?
      raise "Needs database information\n" \
            "Set DATABASE_HOST or pass the url as the first parameter\n" \
            "Example:\nbundle exec rake db:setup postgres://postgres@localhost:5432"
    end

    conn = PG.connect(db_url)
    conn.query("DROP DATABASE IF EXISTS rio_dos_sinos;")
    conn.query("CREATE DATABASE rio_dos_sinos;")

    puts "Created rio_dos_sinos database"

    exit(0)
  end
end
