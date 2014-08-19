module ApplicationHelper
  def is_link_active?(clicked_controller)
    "active" if clicked_controller == params[:controller]
  end
  def volunteer_login_links
    if volunteer_signed_in?
      content_tag(:span, current_volunteer) +
        (link_to "Edit", edit_volunteer_registration_path) +
        (link_to "Log Out", destroy_volunteer_session_path, method: :delete)
    else
      link_to "Log In", new_volunteer_session_path, class: 'btn btn-success btn-block'
      link_to "Sign-Up",new_volunteer_registration_path(group_id: @group.id), class: 'btn btn-info btn-block'

    end
  end
end
