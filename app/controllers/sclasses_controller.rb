class SclassesController < ApplicationController
	
	layout 'admin'
	
	def list
		@sclass = Sclass.order("sclasses.created_at ASC")
	end	
	
	def show
		@sclass = Sclass.find(params[:year])
	end	
	
	def new 
		@sclass = Sclass.new
	end	
	
	def create 
		@sclass = Sclass.new(params[:sclass])
		if @sclass.save
		    flash[:notice] = "Class creates successfully"
			redirect_to(:action => 'list')
		else
		 @sclass_count = Sclass.count + 1
		  render('new')
		    
	   end	
	end	
	
	def edit
		@sclass= Sclass.find(params[:year])	
		@sclass_count = Sclass.count
	end	
	
	
	def update
    	    @sclass = Sclass.find(params[:year])
    		if @sclass.update_attributes(params[:sclass])
			flash[:notice] = "Class update successfully "
			redirect_to(:action => 'list')
		else
		    @sclass_count = Sclass.count
			render('edit')
	   end		
	end	
	
	def delete
	   @sclass =  Sclass.find(params[:year])		
	end	
	
	def destroy
	     
	     Sclass.find(params[:year]).destroy		
		 	
	     flash[:notice] = "Class cretes successfully "
	     redirect_to(:action => 'list')	
	end	
end
