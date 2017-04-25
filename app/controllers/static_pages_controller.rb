class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def home
    @requests = Request.all
  end

  def about
  end

  def liability
  end

end
