class ProjectController < ApplicationController

 
    
#Project Create Function
  def create
    project = Project.new(project_params) 
    if project.save
      
      session[:project_id] = project.id

      redirect_to '/custdashboard'
    else 
      flash[:register_errors] = project.errors.full_messages
      redirect_to '/inspctionform'
    end
  end

  private 
  def project_params
    params.require(:project).permit(:Inspec_name, :Inspec_address, :Elect_name, :Elect_address,
     :Elect_email, :fp_name, :Fp_representative, :fp_address, :fp_email, :Project_scope)
  end

  private
  def current_user
    @current_user ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end


end 

    


