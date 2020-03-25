class Student
  
  attr_accessor :name, :grade, :id 
  
  def initialize(name, grade, id=nil)
    @name = name 
    @grade = grade 
  end 
  
  def self.create_table 
     sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students(
      id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
         SQL
    DB[:conn].execute(sql)
  end 
 
  def self.drop_table
    
  end 
  
  def self.save 
        sql = <<-SQL
      INSERT INTO student (name, grade) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.grade)
  end
  
  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end 
end
