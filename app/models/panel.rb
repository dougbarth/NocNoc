class Panel < ActiveRecord::Base
  acts_as_list :scope => :panel_group

  belongs_to :panel_group
end
