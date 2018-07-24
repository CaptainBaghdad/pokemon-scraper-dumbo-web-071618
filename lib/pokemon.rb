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
   sql  = "SELECT id,name,type FROM pokemon WHERE pokemon.id = ?;"
    ans = db.execute(sql,id)
    ans.flatten
    
    pokey = Pokemon.new(id: ans[0], name: ans[1], type: ans[2], db: db)
    return pokey
   
   
   
 end



end 