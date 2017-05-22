Rails.application.routes.draw do
  # Generic syntax:
  # verb 'path', to: 'controller#action' (action is an instance method)
  # Assign http requests to correct action,
  # which in our case below will go to the controller
  # which pulls pulls in answer.html.irb and copies the question
  # from the query string via param and stores as a varibable so the view can use.
  # the question form then does the 'action'(see form code) which creates GET
  # request to go to coaching/answer, which will have access to the
  # question entered as the controller saved it.

  get 'coaching/answer', to: 'coaching#answer'
  get 'coaching/ask', to: 'coaching#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
