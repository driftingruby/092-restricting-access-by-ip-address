class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :verify_ip_address

  private

  def verify_ip_address
    head :unauthorized if Whitelist.find_by(ip_address: request.remote_ip).nil?
    # if Whitelist.find_by(ip_address: request.remote_ip).nil?
      # redirect_to root_path, alert: 'Unauthorized access.'
    # end
  end
end
