class FooController < ApplicationController
def film
 		respond_to do |format|
		msg={:status => "Title", :message =>"2016/12/11"}
  			format.json{render :json => msg}
  			format.xml {render :xml =>msg }
  			format.html{render :html =>msg }
		end
  end

end
