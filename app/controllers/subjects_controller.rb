class SubjectsController < ApplicationController

	layout 'admin'
	
	def list
		@subjects = Subject.order("subjects.id ASC")
	end	
	
	def show
		@subject = Subject.find(params[:id])
	end	
	
	def new
		@subject = Subject.new
		@year_list = Sclass.pluck(:year)
	end	
	
	def create 
		@subject = Subject.new(params[:subject])
		if @subject.save
		    flash[:notice] = "subject creates successfully"
			redirect_to(:action => 'list')
		else
		
		  render('new')
		    
	   end	
	end	
	
	def edit
		@subject= Subject.find(params[:id])
		@year_list = Sclass.pluck(:year)
		@subject_count = Subject.count
	end	
	
	
	def update
    	@subject= Subject.find(params[:id])	
		if @subject.update_attributes(params[:subject])
			flash[:notice] = "subject update successfully "
			redirect_to(:action => 'show', :id => @subject.id)
		else
		    @subject_count = Subject.count
			render('edit')
	   end		
	end	
	
	def delete
	  @subject =  Subject.find(params[:id])		
	end	
	
	def destroy
	     Subject.find(params[:id]).destroy	
	     flash[:notice] = "subject cretes nicely "
	     redirect_to(:action => 'list')	
	end	
	
end
