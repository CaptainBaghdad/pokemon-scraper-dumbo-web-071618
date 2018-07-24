class Pokemon
  
   # The find method should create a new Pokemon object with an id, type, name AND hp after selecting their row from the database by their id number.
      # remember to also update the initialize method to accept an argument of hp that defaults to nil if not set (so it still passes the non-bonus tests)

 attr_accessor :name, :type, :id, :db
 
 def initialize(id:, name:, type:, db:, hp: nil)
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
    ans = ans.flatten
    
    pokey = Pokemon.new(id: ans[0], name: ans[1], type: ans[2], db: db)
    return pokey
   
   
   
 end
 
 def alter_hp(hp,db)
   
   sql  =  ""
   
   
 end
 
 end


