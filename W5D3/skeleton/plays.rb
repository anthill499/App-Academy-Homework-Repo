require 'sqlite3'       # gems
require 'singleton'

class PlayDBConnection < SQLite3::Database    # inherit from SQLite3 database
  include Singleton

  def initialize                
    super('plays.db')           # pass in the crazy SQL database file
    self.type_translation = true  # all data we get back is the same as passed in data
    self.results_as_hash = true   # data needs to be in hash
  end
end

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.find_by_title(title)
    raise "#{title} is not a valid title" if self.all { |el| }
  end

  def self.find_by_playwright(name)

  end

  def self.all      
    data = PlayDBConnection.instance.execute("SELECT title FROM plays")
    # PlayDBConnection.instance => grabbing database => .execute(SQL commands)
    data.map { |datum| Play.new(datum) }  
    # array of play classes and pass in all the data.
  end

  def initialize(options)         # options hash will either come in from self.all or user can create a play class  
    @id = options['id']           # if there is a missing value, @instance_variable will be nil
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create                      # user calls create on the instance, heredoc: everything between SQL will be read as a string<<-SQL
    raise "#{self} already in database" if self.id    # 
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO                     
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    # values are gonna be instance variable, need to be passed into heredoc
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end
end
