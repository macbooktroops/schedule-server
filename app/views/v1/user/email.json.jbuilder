json.extract! @user, :id, :name, :email
json.birth @user.birth.to_i