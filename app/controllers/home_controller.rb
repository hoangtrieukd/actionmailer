class HomeController < ApplicationController
  def index
  	if model_signed_in?
  		redirect_to posts_path
  	else
  		redirect_to new_model_session_path
  	end
  end
end
