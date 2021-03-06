module UsersHelper
  
  def user_edit_helper(field,can_edit = false, make_link = true, trunc = 32)
     render 'shared/edit_info', {type: 'user', field: field, value: @user[field], row_id: @user.username, can_edit: can_edit, make_link: make_link, trunc: trunc}
  end
    
  def user_redactor_helper(can_edit = false, field = "content")
    
    if field == "bio"
      content = @user.bio
    else
      content = @user.content
    end
    
    render 'shared/content_borderless', {type: 'user', field: field, content: content, row_id: @user.username, has_content: !content.blank? , can_edit: can_edit}
  end
  
end
