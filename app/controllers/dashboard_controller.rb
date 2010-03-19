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
end
