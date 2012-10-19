class StudentsController < ApplicationController

   layout 'admin'
 
 def list
   @student = Student.order("students.id ASC")     
 end
 
 def show
   @student = Student.find(params[:id])
   
 end
 
 def new
   @student = Student.new
   @year_list = Sclass.pluck(:year)
   @subject = Subject.all
 # @student_count = Student.count + 1 
 end
 
 
 def create
  # @sub = Subject.first(params[:id])
   @student = Student.new(params[:student])
   
  if @student.save
     flash[:notice] = "Student created successfully"
     redirect_to(:action => 'list')
  else
     @student_count = Student.count + 1
     render('new')
 end
 end
 
 def edit
		@student= Student.find(params[:id])	
		@year_list = Sclass.pluck(:year)
		@student_count = Student.count
	end	
	
	
	def update
    	@student= Student.find(params[:id])	
	 
		if @student.update_attributes(params[:student])
			flash[:notice] = "student update successfully."
			redirect_to(:action => 'show', :id => @student.id)
		else
		    @student_count = Student.count
			render('edit')
	   end		
	end	
 
 def delete
    @student = Student.find(params[:id])
 end
 
 def destroy
    Student.find(params[:id]).destroy
    flash[:notice] = "Student Deleted successfully"
    redirect_to(:action => 'list')
 end
 
 end


