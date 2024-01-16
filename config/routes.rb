Rails.application.routes.draw do
  # show all tasks
  get "tasks", to: "tasks#index"

  # new
  get "tasks/new", to: "tasks#new", as: :add
  # create
   post "tasks", to: "tasks#create"

  # show the task with the id
  get "tasks/:id", to: "tasks#show", as: :task

  #edit
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  #updtae
  patch "tasks/:id", to: "tasks#update"

  #delete
  delete "tasks/:id", to: "tasks#destroy"
end
