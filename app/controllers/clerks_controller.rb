class ClerksController < ApplicationController
  
   layout 'admin'
   
  def list
    @clerks = Clerk.order("clerks.id ASC")
  end
  
  
  def login
  end

  def send_login
     found_user = Clerk.authenticate(params[:username], params[:password])
	 if found_user
	     session[:user_id] = found_user.id
		 flash[:notice] = 'you are now log in'
		 redirect_to(:controller=>'subjects', :action => 'list')
	 else
	     flash.now[:notice] = "username/password combination incorrect"
		 render(:action => 'login')
		 
	 end
  end
  
  
  def new
    @clerk = Clerk.new
  end
  
  def create
    @clerk = Clerk.new(params[:clerk])
    if @clerk.save
     flash[:notice] = "clerk create successfully " 
	 redirect_to(:action => 'login')
    else
      render('new')
     end
  end
  
  def show 
    @clerk = Clerk.find(params[:id])
  end
  
  def edit
    @clerk = Clerk.find(params[:id])
  end
  
  def update
    @clerk = Clerk.find(params[:id])
    if @clerk.update_attributes(params[:clerk])
			flash[:notice] = "clerk update successfully "
			redirect_to(:action => 'show', :id => @clerk.id)
		else
		 
			render('edit')
	   end		
  end
  
  def delete
     @clerk = Clerk.find(params[:id])
     
  end
  
  def destroy
     Clerk.find(params[:id]).destroy	
	     flash[:notice] = "clerk deleted successfully "
	     redirect_to(:action => 'list')	
  end
end
