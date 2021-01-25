class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :relationship, :address, :avatar_url

  attributes :birthdate do |day|
    day && day.birthday.strftime('%B %d, %Y')
  end
end
