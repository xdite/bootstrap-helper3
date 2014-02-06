Rails.application.routes.draw do
  root :to => "pages#welcome"

  # mount BootstrapHelper3::Engine => "/bootstrap_helper3"
end
