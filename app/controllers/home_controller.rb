class HomeController < ApplicationController
  def index
    if(user_signed_in? && current_user.user_type == "Owner")
      userid = current_user.id
      @saloon = Saloon.where("user_id = #{userid}")
      puts @saloon
      if(@saloon.count == 0)
        redirect_to root_path
      end
    end
  end
end
