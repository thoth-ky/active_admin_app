ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
permit_params :user_id, :title, :body
index do
  selectable_column
  id_column
  column :title
  column :body
  column :author
  column :created_at
  column :updated_at
  actions
end

form do |f|
  f.inputs do
    f.input :author
    f.input :title
    f.input :body
  end
  f.actions
end


end
