class WelcomeController < ApplicationController
  # skip_before_action :verify_ip_address, only: :index
  before_action :verify_ip_address, only: :restricted
  def index
  end

  def restricted
  end
end
