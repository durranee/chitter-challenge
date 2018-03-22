require 'pg'

class DatabaseConnection

  def self.connect(db_name)
    @connection = PG.connect(ENV['DATABASE_URL'])
  end

  def self.database
    @connection
  end

  def self.query(sql_query)
    @connection.exec(sql_query)
  end
end
