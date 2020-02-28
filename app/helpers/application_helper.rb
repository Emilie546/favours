module ApplicationHelper
 # fait pour simplifier le code au niveau de la vue
  def profile_picture(user)
    if user.profile_picture.attached?
      cl_image_tag(user.profile_picture.key)
    else
      image_tag 'Favours.png', class: 'card-show-user-pic avatar-bordered mt-0'
    end
  end
end
