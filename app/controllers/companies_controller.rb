class CompaniesController < ApplicationController
	before_action :set_companies, only: [:show, :edit, :update, :destroy]
	def show    
	end
	def edit
		respond_to do |format|
	     format.js 
    end
	end

	def new
		@company = Company.new
	end

	def index
		@companies = Company.all
		@companies = Company.paginate(:page => params[:page])
	end

	def create
		@company = Company.new(company_params)
		@company.save
		respond_to do |format|
			format.js
		end
	end	
	def destroy
  	@company.destroy
  	respond_to do |format|
	     format.js 
    end
  	redirect_to @company
	end
	def update
 		if @company.update(company_params)
    		redirect_to @company
		else
    		render 'edit'
		end	
	end
	private
		def set_companies
      @company = Company.find(params[:id])
    end
		def company_params
  		params.require(:company).permit!  	
		end 		
end
