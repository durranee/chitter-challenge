require 'pg'

task default: %w[setup_db test_database_population]

task :setup_db do

  conn = PG.connect

  p 'Creating Databases...........'
  # creating new databases and tables if don't already exist
    conn = PG.connect

    # tries to create database
    begin
      conn.exec("CREATE DATABASE on heroku")
      conn = PG.connect(ENV['DATABASE_URL'])
      puts "Database #{db} created."
    rescue PG::Error => e
      puts e.message
    end

    #  tries to create tables
    begin
      conn.exec("create table peeps(
        id SERIAL PRIMARY KEY,
        user_id INT NOT NULL,
        peep VARCHAR(80) NOT NULL,
        date timestamp default current_timestamp);"
      )

      conn.exec("create table users(
        id SERIAL PRIMARY KEY,
        username VARCHAR(30) NOT NULL UNIQUE,
        password VARCHAR(50) NOT NULL,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        email VARCHAR(320) NOT NULL UNIQUE
        );"
      )
      puts "Tables on #{db} created."
      rescue PG::Error => e
      puts e.message
    end

end
