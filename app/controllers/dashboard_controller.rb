class DashboardController < ApplicationController
  def index
    @panels = Panel.all
    @initial_panel = Panel.first
    @page_width = params[:page_width] || 0
  end

  def refresh
    @current_panel = Panel.find(params[:current_id])
    @next_panel = @current_panel.last? ? Panel.first : @current_panel.lower_item
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
