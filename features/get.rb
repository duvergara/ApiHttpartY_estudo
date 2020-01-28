Given("que desejo validar o campos titles da API filmes") do
 page = Apiget.new
 @result = page.api_getNeon_filmes
   #@result = JSON(@result)
  quantidade = @result["results"].count
   quantidade.times do |i|
   puts @result["results"][i]["title"]
   end
  end

Then("retorna codigo {int}") do |codigo|
    expect(@result.code).to eq   200
    puts "Código de retorno é #{@result.code}"
    expect(@result["results"][0]["title"]).to eq "A New Hope"
    expect(@result["results"][1]["title"]).to eq "Attack of the Clones"
    expect(@result["results"][2]["title"]).to eq "The Phantom Menace"
    expect(@result["results"][3]["title"]).to eq "Revenge of the Sith"
    expect(@result["results"][4]["title"]).to eq "Return of the Jedi"
    expect(@result["results"][5]["title"]).to eq "The Empire Strikes Back"
    expect(@result["results"][6]["title"]).to eq "The Force Awakens"
  end

  Given("que desejo validar o campos titles da API planeta") do
   
  page = Apiget.new
 @result = page.api_getNeon_planetas
 puts quantidade = @result["results"].count
 puts  nummaximo =  quantidade + rand(3)
 
 @result2 =HTTParty.get(
  "http://swapi.co/api/films/",
#body:{count: "nummaximo"}.to_json,
headers:{
"Content-Type" => "application/jason",
},
)

  end
  
  Then("retorna codigo {int} planeta") do |codigo|
    expect(@result.code).to eq   200
    puts "Código de retorno é #{@result.code}"
  end
  