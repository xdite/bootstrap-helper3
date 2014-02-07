module BootstrapHelper3
  module LayoutsHelper

    def render_page_title
      title = @page_title ? "#{@page_title} | #{SITE_NAME}" : SITE_NAME rescue "SITE_NAME"
      content_tag("title", title, nil, false)
    end

    def render_body_tag
      body_class   = "#{controller_name}-controller #{action_name}-action"
      id_attribute = @body_id.present? ? %Q(id="#{@body_id}-page" ) : ""

      <<-BODY_TAG.strip_heredoc.html_safe
        <!--[if lt  IE 7]> <body class="#{body_class} ie6">                 <![endif]-->
        <!--[if gte IE 7]> <body class="#{body_class} ie">                  <![endif]-->
        <!--[if !IE]>-->   <body #{id_attribute}class="#{body_class}">  <!--<![endif]-->
      BODY_TAG
    end

    def notice_message
      alert_types = { :notice => "success", :alert => "danger" }

      close_button_options = { :class => "close", "data-dismiss" => "alert", "aria-hidden" => true }
      close_button = content_tag(:button, "×", close_button_options)

      alerts = flash.map do |type, message|
        alert_content = close_button + message

        alert_type = alert_types[type] rescue type
        alert_class = "alert alert-#{alert_type} alert-dismissable"

        content_tag(:div, alert_content, :class => alert_class)
      end

      alerts.join("\n").html_safe
    end

    def ibutton(text, path, options = {})
      iclass = options.delete(:iclass) || ""
      icon = content_tag(:i, "", :class => iclass)

      link_to path, options do
        icon + content_tag(:span, " #{text}")
      end
    end

    def yield_or_default(message, default_message = "")
      message.nil? ? default_message : message
    end

    def s(html)
      sanitize(html, :tags => %w(table thead tbody tr td th ol ul li div span font img sup sub br hr a pre p h1 h2 h3 h4 h5 h6), :attributes => %w(style src href size color))
    end

  end
end
