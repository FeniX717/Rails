class PersonsController < ApplicationController
	include DeviseTokenAuth::Concerns::SetUserByToken
  def profile
  end
  def index

  end
end
