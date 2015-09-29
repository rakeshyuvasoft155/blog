class RegistrationsController < Devise::RegistrationsController

  def new
 		super
	end
  def show  
    super
  end
	def create
 		@company = Company.find(params[:user][:company_id])
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

  

  private
    def user_params
    	params.require(:user).permit( :email, :password,:password_confirmation, :name, :company_id, :provider, :uid)
    end
  
end
