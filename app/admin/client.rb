ActiveAdmin.register Client do
  #
  permit_params :name, :address, :phone, :email
  menu parent: "Client management"

  filter :name
  filter :email

  index do
    #column :selectable
    column :name
    column :email do |client|
      if client.email
        mail_to client.email, client.email
      else
        "-"
      end
    end
    column :address do |client|
      truncate client.address
    end
    column :phone
    column do |client|
      link_to("Details", admin_client_path(client)) + " | " + \
      link_to("Edit", edit_admin_client_path(client)) + " | " + \
      link_to("Delete", admin_client_path(client), :method => :delete, :confirm => "Are you sure?")
    end
  end

  show :title => :name do
    panel "Client Details" do
      attributes_table_for client do
        row("Name") { client.name }
        row("Email") { mail_to client.email }
        row("Address") { client.address }
        row("Phone") { client.phone }
      end
    end
  end

  
end
