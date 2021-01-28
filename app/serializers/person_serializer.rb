class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :relationship, :street_address, :avatar_url, :city, :state, :postal_code, :email_address

  attributes :birthdate do |day|
    day && day.birthday.strftime('%B %d, %Y')
  end
end
