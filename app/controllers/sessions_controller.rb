class SessionsController < ApplicationController
  def create
    User.create(uid: env['omniauth.auth']['uid'], name: env['omniauth.auth']['info']['name'])
    redirect_to root_path
  end
end
