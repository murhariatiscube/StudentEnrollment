class LessonController < ApplicationController
 layout 'admin'
 
    #before_filter :confirm_logged_in
    before_filter :find_subject
    
 #def index
  # list
  # render('list')
 #end
 
 def list
   
   @lesson = Lesson.sorted.where(:subject_id => @subject.id)      #@subjects= instance variable, Subject = Model name, subjects =table name
   # @subjects_list = Subject.all
   end
 
 def show
   @lesson = Lesson.find(params[:id])
 end
 
 def new
  # @subjects_list = Subject.pluck(:name)     # It creates an array of Student.id
   @lesson = Lesson.new(:subject_id => @subject.id)
   @lesson_count = @subject.lessons.size + 1
   @subject_count = Subject.count 
  # @subjects = Subject.find(@subjects.subject_id)
 end
 
 
 def create
   # new_position =params[:lesson].delete(:position)
   
    @lesson =Lesson.new(params[:lesson])
	@lesson.subject_id=@subject.id
  # @subjects_list = Subject.new(params[:subject])
  if @lesson.save
     flash[:notice] = "Lesson created successfully"
     redirect_to(:action => 'list', :subject_id => @lesson.subject_id)
	 
  else
     @lesson_count = @subject.lessons.size + 1
     render('new')
 end
 end
 
 def edit
		@lesson = Lesson.find(params[:id])	
		@subjects_list = Subject.pluck(:id)
		@lesson_count = @subject.lessons.size
		@subjects = Subject.order("position ASC")
	end	
	
	
	def update
    	@lesson = Lesson.find(params[:id])
    	new_position =params[:lesson].delete(:position)
		if @lesson.update_attributes(params[:lesson])
		   
			flash[:notice] = "lesson update successfully."
			redirect_to(:action => 'show', :id => @lesson.id, :subject_id => @lesson.subject_id)
		else
		    @lesson_count = @subject.lessons.size
			render('edit')
	   end		
	end	
 
 def delete
    @lesson = Lesson.find(params[:id])
 end
 
 def destroy
    lesson = Lesson.find(params[:id])
    
    lesson.destroy
    flash[:notice] = "Lesson Deleted successfully"
    redirect_to(:action => 'list', :subject_id => @subject.id)
 end
  
 def find_subject
    if params[:subject_id]
    @subject = Subject.find_by_id(params[:subject_id])
 end
 end
 
end
