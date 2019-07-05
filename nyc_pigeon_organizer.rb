



def nyc_pigeon_organizer(data)
   new_hash = {}
   pigeon_data.each do |attribute, data|
     data.each do |key, array|
       array.each do |name|
         if !new_hash.has_key?(name)
           new_hash[name] = {}
         end
         if !new_hash[name].has_key?(attribute)
           new_hash[name][attribute] = []
         end
         if !new_hash[name][attribute].include?(key)
           new_hash[name][attribute] << key.to_s
         end
       end
     end
   end
   new_hash
 end