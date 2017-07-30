Rails.application.routes.draw do
  # Declare our root page
  root('welcome#index')

  # Define pages that exist
  get('welcome/index')

  # Define a CRUD resource
  resources(:articles)
end
