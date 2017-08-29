Rails.application.routes.draw do
  get '/one_contact_url' => 'contacts#one_contact_action'
  get '/all_contacts_url' => 'contacts#all_contacts_action'
end
