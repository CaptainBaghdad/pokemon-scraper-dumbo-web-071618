class Pokemon

 #attr_accessor :name, :type
 
 def initialize(pokemon)
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
    
 end 
 
 
 



end 