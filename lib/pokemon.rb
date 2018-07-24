class Pokemon

 attr_accessor :name, :type, :id, :db
 
 def initialize(id:, name:, type:, db:)
    @id = id
    @name = name 
    @type = type
    @db = db
    
 end 
 
 
 def save 
   sql  = "INSERT INTO pokemons(name,type,db) VALUES(?,?,?);"
   DB.execute(sql, name, type,db)
   
 end
 
 



end 