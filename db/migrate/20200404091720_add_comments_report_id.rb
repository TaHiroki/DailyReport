class AddCommentsReportId < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :report_id, :integer
    remove_column :reports, :comment_id, :integer
  end
end
