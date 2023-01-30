class Admin::SalesController < ApplicationController
  http_basic_authenticate_with name: ENV['HTTP_AUTH_UN'], password: ENV['HTTP_AUTH_PW']
  def index
    @sales = Sale.all
    # render :index
  end

end