if defined?(SimpleForm)
  require "simple_form/version"

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

    config.default_wrapper = :bt3

    if SimpleForm::VERSION >= "3"
      config.input_class = "form-control"
    else
      # Ref: https://gist.github.com/mattclar/6315955

      inputs = %w[
        BooleanInput
        CollectionSelectInput
        DateTimeInput
        FileInput
        GroupedCollectionSelectInput
        NumericInput
        PasswordInput
        PriorityInput
        RangeInput
        StringInput
        TextInput
      ]

      inputs.each do |input_type|
        superclass = "SimpleForm::Inputs::#{input_type}".constantize

        new_class = Class.new(superclass) do
          def input_html_classes
            super.push('form-control')
          end
        end

        Object.const_set(input_type, new_class)
      end
    end
  end

end
