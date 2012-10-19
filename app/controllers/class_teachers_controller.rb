class ClassTeachersController < ApplicationController

 def classtech
 	  @ct = ClassTeacher.new   
      @tnames = Teacher.pluck(:id)
      @classes = Sclass.pluck(:year)
      @tech = Teacher.find(1)
      @cls = Sclass.find("FE_A")
       @st = ClassTeacher.create(:teacher_id => @tech, :year => @cls )
		if @st.save
		    flash[:notice] = " creates successfully"
		else
		  render('new')
		    
	   end	
	end	
 end