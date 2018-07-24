class Pokemon

 attr_accessor :name, :type, :id, :db
 
 def initialize(id:, name:, type:, db:)
    @id = id
    @name = name 
    @type = type
    @db = db
    
 end 
 
 
 def self.save(name,type,db) 
   sql  = "INSERT INTO pokemon(name,type) VALUES(?,?);"
   db.execute(sql, name, type)
   
 end
 
 def self.find(id,db)
   sql  = "SELECT * FROM pokemon WHERE pokemon[0][0] = ?;"
    db.execute(sql,id)
   
   
   
 end



end 