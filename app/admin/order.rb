ActiveAdmin.register Order do
  permit_params :name, :description, :ordered_at, :quantity, :status, :price, :tracking_link
end
