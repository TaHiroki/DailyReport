class AddReportCommentId < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :comment_id, :integer
  end
end
