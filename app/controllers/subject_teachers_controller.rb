class SubjectTeachersController < ApplicationController

 def subtech
 	  @st = SubjectTeacher.new   
      @tnames = Teacher.pluck(:tname)
      @subs = Subject.pluck(:sub_name)
  #     @tech = Teacher.find_by_tname(params[:tname])
   #    @sub = Subject.find_by_sub_name(params[:sub_name])
   #   <%= @tech.id %>
  end    
      
  def subtech2
       @tech = Teacher.find(params[:tname]).id
       @sub = Subject.find(params[:sub_name]).id
       @st = SubjectTeacher.create(:teacher_id => @tech, :subject_id => @sub )
		if @st.save
		    flash[:notice] = " creates successfully"
		else
		
		  render('new')
	end	    
	   end	
	end	
