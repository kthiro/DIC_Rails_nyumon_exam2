module BlogsHelper
  def choose_path_new_or_edit
    if action_name == 'new'
      blogs_confirm_path
    elsif action_name == 'edit'
      "/blogs/#{@blog[:id]}/update"
    end
  end
end
