ActiveAdmin.register User do
  permit_params :email, :username, :password, :password_confirmation, :superadmin

  index do
    selectable_column
    id_column
    column :email
    column :username
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :superadmin
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :superadmin, :label => "Super Administrator"
    end
    f.button :Create
  end
  
    # create_or_edit = Proc.new {
    #   @user            = User.create_or_find_by!(params[:id])
    #   @user.superadmin = params[:user][:superadmin]
    #   @user.attributes = params[:user].delete_if do |k, v|
    #     (k == "superadmin") ||
    #     (["password", "password_confirmation"].include?(k) && v.empty? && !@user.new_record?)
    #   end
    #   if @user.save
    #     redirect_to :action => :show, :id => @user.id
    #   else
    #     render active_admin_template((@user.new_record? ? 'new' : 'edit') + '.html.erb')
    #   end
    # }
    # member_action :create, :method => :post, &create_or_edit
    # member_action :update, :method => :put, &create_or_edit
  
  end