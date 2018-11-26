class HomeController < ApplicationController
  def index
  	 @names = Currency.all
  end

=begin
  def search
  	@name = Currency.select(params[:name])
  end
  def refresh
  end
=end
end
