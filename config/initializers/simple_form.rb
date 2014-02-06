if defined?(SimpleForm)
  SimpleForm.setup do |config|
    config.browser_validations = true

    # Common Bootstrap 3 Wrappers
    config.wrappers :bt3, :class => "form-group", :error_class => "has-error" do |b|
      b.use :html5

      b.use :placeholder
      b.use :maxlength
      b.use :min_max

      b.optional :pattern
      b.optional :readonly

      b.use :label
      b.use :input
      b.use :error, :wrap_with => { :tag => :span, :class => "help-block" }
      b.use :hint,  :wrap_with => { :tag => :span, :class => "help-block" }
    end

    # .form-horizontal Bootstrap 3 Wrappers
    config.wrappers :bt3_h, :class => "form-group", :error_class => "has-error" do |b|
      b.use :html5

      b.use :placeholder
      b.use :maxlength
      b.use :min_max

      b.optional :pattern
      b.optional :readonly

      b.use :label, :wrap_with => { :class => "col-sm-2"}
      b.use :input, :wrap_with => { :class => "col-sm-5"}
      b.use :error, :wrap_with => { :tag => :span, :class => "help-block" }
      b.use :hint,  :wrap_with => { :tag => :span, :class => "help-block" }
    end

    # .form-horizontal Bootstrap 3 Wrappers in narrow layout (.grid-compact)
    config.wrappers :bt3_h_narrow, :class => "form-group", :error_class => "has-error" do |b|
      b.use :html5

      b.use :placeholder
      b.use :maxlength
      b.use :min_max

      b.optional :pattern
      b.optional :readonly

      b.use :label, :wrap_with => { :class => "col-sm-3"}
      b.use :input, :wrap_with => { :class => "col-sm-6"}
      b.use :error, :wrap_with => { :tag => :span, :class => "help-block" }
      b.use :hint,  :wrap_with => { :tag => :span, :class => "help-block" }
    end

    # .input-group Bootstrap 3 Wrappers
    config.wrappers :input_group, :class => "form-group", :error_class => "has-error" do |b|
      b.use :html5

      b.use :placeholder
      b.use :maxlength
      b.use :min_max

      b.optional :pattern
      b.optional :readonly

      b.use :label
      b.use :input, :wrap_with => { :tag => :div,  :class => "input-group" }
      b.use :error, :wrap_with => { :tag => :span, :class => "help-block" }
      b.use :hint,  :wrap_with => { :tag => :span, :class => "help-block" }
    end

    config.input_class = "form-control"
    config.default_wrapper = :bt3
  end
end
