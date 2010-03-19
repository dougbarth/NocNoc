class DashboardController < ApplicationController
  def index
    @initial_panel = Panel.first
  end

  def refresh
    @next_id = (params[:current_id].to_i + 1) % panel_urls.size
    @next_title, @next_url = panel_urls[@next_id]
  end

  def load_page
    render :text => params[:page]
  end

  private
  def panel_urls
    [['Page 1', url_for(:action => :load_page, :page => 'page1.html')],
      ['Page 2', url_for(:action => :load_page, :page => 'page2.html')]]
  end
end
