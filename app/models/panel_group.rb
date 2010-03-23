class PanelGroup < ActiveRecord::Base
  has_many :panels

  def next_panel(current_panel)
    current_panel.last? ? panels.first : current_panel.lower_item
  end
end
