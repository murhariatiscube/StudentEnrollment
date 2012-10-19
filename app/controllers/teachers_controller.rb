class TeachersController < ApplicationController

	layout 'admin'
	
	def list
		@teachers = Teacher.order("teachers.id ASC")
	end	
	
	def show
		@teacher = Teacher.find(params[:id])
	end	
	
	def new

		@teacher = Teacher.new
		@teacher_count = Teacher.count + 1
		
	end	
	
	def create 
		@teacher = Teacher.create(params[:teacher])	
		if @teacher.save
		    flash[:notice] = "teacher creates successfully"
			redirect_to(:action => 'list')
		else
		 @teacher_count = Teacher.count + 1
		  render('new')
		    
	   end	
	end	
	
	def edit
		@teacher= Teacher.find(params[:id])	
		@teacher_count = Teacher.count
	end	
	
	
	def update
    	@teacher= Teacher.find(params[:id])	
	 
		if @teacher.update_attributes(params[:teacher])
			flash[:notice] = "teacher update successfully "
			redirect_to(:action => 'show', :id => @teacher.id)
		else
		    @teacher_count = Teacher.count
			render('edit')
	   end		
	end	
	
	def delete
	 @teacher =  Teacher.find(params[:id])		
	end	
	
	def destroy
	     Teacher.find(params[:id]).destroy	
	     flash[:notice] = "teacher cretes nicely "
	     redirect_to(:action => 'list')	
	end	
	
end