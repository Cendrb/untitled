class AddSortingOrderToDotaHeroShowCriteria < ActiveRecord::Migration
  def change
    add_column :dota_hero_show_criteria, :sorting_order, :integer
  end
end
