class DashboardController < ApplicationController
  before_filter :signed_in_user
  def index
  end
end
