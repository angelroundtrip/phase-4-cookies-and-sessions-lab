class SessionsController < ApplicationController

  def views
    cookies[:page_views] ||= 0
    cookies[:page_views] = cookies[:page_views].to_i + 1
    session[:page_views] ||= 0
    session[:page_views] += 1

    if session[:page_views] <= 3
      render json: article
    else
      render json: {error: "Over limit"}, status: 401
    end
  end

end
