class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_member!

  helper_method :current_region, :current_society

  def current_region
    current_society.region
  end

  def current_society
    current_member.society
  end
end
