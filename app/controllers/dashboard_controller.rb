class DashboardController < ApplicationController
  def index
    @initial_url = url_for(:action => :load_page, :page => panel_urls.first)
  end

  def refresh
    @next_url = url_for(:action => :load_page, :page => panel_urls.second)
  end

  def load_page
    render :text => params[:page]
  end

  private
  def panel_urls
    ['page1.html', 'page2.html']
  end
end
