class Apiget
     
def api_getNeon_filmes

     HTTParty.get(
             "http://swapi.co/api/films/",
        #body:{q: "London"}.to_json,
   headers:{
  "Content-Type" => "application/jason",
   },
   )
    
  end

  def api_getNeon_planetas

     HTTParty.get(
             "http://swapi.co/api/films/",
        #body:{count: "70"}.to_json,
   headers:{
  "Content-Type" => "application/jason",
   },
   )
    
  end


end 