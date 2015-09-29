class UsersController < ApplicationController
	 
	def new
		@user = User.new
	end
	def create
		
  		@user=User.new(user_params)  	
  		if @user.save  
    		redirect_to @company_user
  		else
  			redirect_to new_company_user_path
		end 	
	end
	
	private
		def user_params
		  params.require(:user).permit(:email, :password,:password_confirmation,:remember_me, :name, :company_id)
		end
end
