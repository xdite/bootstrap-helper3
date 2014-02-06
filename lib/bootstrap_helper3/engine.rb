module BootstrapHelper3
  class Engine < ::Rails::Engine
    # isolate_namespace BootstrapHelper3

    initializer "bootstrap_helper3.view_helpers" do
      ActionView::Base.send :include, BootstrapHelper3::LayoutsHelper
    end
  end
end
