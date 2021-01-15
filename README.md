# README

Began building the backend with devise by using this "https://github.com/DakotaLMartinez/rails-devise-jwt-tutorial"

/*
string :first_name
string :last_name
string :relationship
date :birthday
string: address
string :avatar_url
*/

Person
    belongs_to :user
    has_many :notes

/*

text :context

*/

Note
    belongs_to :user
    belongs_to :person

*/


``
rails g scaffold Person first_name last_name relationship birthday:date address avatar_url

``

``
rails g scaffold Note context:text

``