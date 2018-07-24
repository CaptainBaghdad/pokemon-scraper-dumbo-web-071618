class Pokemon

 attr_accessor :name, :type, :id, :db
 
 def initialize(pokemon)
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
    
 end 
 
 
 



end 