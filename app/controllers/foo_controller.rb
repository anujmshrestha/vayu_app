class FooController < ApplicationController
def film
 		require 'csv' 
    filename="public/Film.csv"
    #CSV.foreach(filename) do |row|
     # puts row[2]
    #end
    random_line = nil
    File.open("public/Film.csv") do |file|
    file_lines = file.readlines()
    random_line = file_lines[Random.rand(0...file_lines.size())]
    end
    x=random_line.split(',') 
   # puts random_line
    respond_to do |format|
		    @msg={:Title => x[1], :Year=>x[2]}
  			 format.json{render :json => @msg}
  			 format.xml {render :xml => @msg }
  			 format.html{render :html => @msg 
}		end

  end
 
  def home
  	@msg= 'Hello world'

  end

  	
  

end