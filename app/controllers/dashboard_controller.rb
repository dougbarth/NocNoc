class DashboardController < ApplicationController
  def index
    panel = panel_urls.first
    @initial_title = panel.first
    @initial_url = url_for(:action => :load_page, :page => panel.second)
  end

  def refresh
    panel = panel_urls.second
    @next_title = panel.first
    @next_url = url_for(:action => :load_page, :page => panel.second)
  end

  def load_page
    render :text => params[:page]
  end

  private
  def panel_urls
    [['Page 1', 'page1.html'],
      ['Page 2', 'page2.html']]
  end
end
