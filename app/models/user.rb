class User < ActiveRecord::Base

	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable,
	       :omniauthable, :omniauth_providers =>[:facebook, :twitter]

	belongs_to :company
	validates :email, presence: true, uniqueness: {scope: :company_id}
	def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
	    user = User.where(:provider => auth.provider, :uid => auth.uid).first
	    if user
	      return user
	    else
	      registered_user = User.where(:email => auth.uid + "@twitter.com").first
	      if registered_user
	        return registered_user
	      else

	      user = User.create(name:auth.extra.raw_info.name,
	                            provider:auth.provider,
	                            uid:auth.uid,
	                            email:auth.provider+"_rakeshbakoriya@gmail.com",
	                            password:Devise.friendly_token[0,20],
	                          )
	      end

	    end
  	end
  	def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
	    user = User.where(:provider => auth.provider, :uid => auth.uid).first
	    if user
	      return user
	    else
	      registered_user = User.where(:email => auth.uid + "@facebook.com").first
	      if registered_user
	        return registered_user
	      else
	        user = User.create(name:auth.extra.raw_info.name,
	                            provider:auth.provider,
	                            uid:auth.uid,
	                            email:"rakeshbakoriya@gmail.com",
	                            password:Devise.friendly_token[0,20],
	                          )
	      end

	    end
  	end
end
