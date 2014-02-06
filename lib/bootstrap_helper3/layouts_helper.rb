module BootstrapHelper3
  module LayoutsHelper
    def render_body_tag
      body_class   = "#{controller_name}-controller #{action_name}-action"
      id_attribute = @body_id.present? ? %Q(id="#{@body_id}-page" ) : ""

      <<-BODY_TAG.strip_heredoc.html_safe
        <!--[if lt  IE 7]> <body class="#{body_class} ie6">                 <![endif]-->
        <!--[if gte IE 7]> <body class="#{body_class} ie">                  <![endif]-->
        <!--[if !IE]>-->   <body #{id_attribute}class="#{body_class}">  <!--<![endif]-->
      BODY_TAG
    end
  end
end
