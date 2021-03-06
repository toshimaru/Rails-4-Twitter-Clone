# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    if logged_in?
      @feed_items = current_user.feed.includes(:user).paginate(page: params[:page])
    end
  end
end
