class Student
  
  attr_accessor :name, :grade, :id 
  
  def initialize(name, grade, id=nil)
    @name = name 
    @grade = grade 
  end 
  
  def self.create_table 
     sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students
  end 

end
