# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
  end

  def update
    super
  end

  def build_resource(sign_up_params)
   resource.uid = resource.email
   resource.provider = ''
  end

end