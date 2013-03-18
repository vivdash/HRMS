class AdminSessionsController < ApplicationController
 def new  
    @admin_session = AdminSession.new  
 end  
  
  def create  
    @admin_session = AdminSession.new(params[:admin_session])  
    if @admin_session.save  
      flash[:notice] = "Login successful!"  
      redirect_to "http://www.ymail.com" 
    else  
      render :action => :new  
    end  
  end 
  
  def destroy  
    current_admin_session.destroy  
    flash[:notice] = "Logout successful!"  
    redirect_to root_url  
  end 
   def create
    @adm = Admin.new(params[:adm])

    respond_to do |format|
      if @adm.save
        redirect_to "http://www.ymail.com" 
              else
        
      end
    end
  end

   
  def show

  end
end  
  
  
 
