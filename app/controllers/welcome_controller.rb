class WelcomeController < ApplicationController
  def index
    render :text => "The time is #{Time.now.strftime "%b %e, %l:%M %p %Z"}"
  end
end
