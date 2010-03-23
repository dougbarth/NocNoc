class DashboardController < ApplicationController
  def index
    @panel_groups = PanelGroup.all
    @page_width = params[:page_width].to_i || 0
  end

  def refresh
    @panel_groups = PanelGroup.find(params[:panel_groups].keys)
  end
end
