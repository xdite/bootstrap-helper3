# Bootstrap Helper 3

View helpers for bootstrap 3.


## Installation

Add the gem to `Gemfile`:

    gem "bootstrap_helper3"

And then run `bundle install`.


## Helpers

### `render_page_title`

In `config/application.rb`:

```ruby
SITE_NAME = "My Site"
```

In controller:

```ruby
class PagesController < ApplicationController
  def welcome
    @page_title = "Welcome"
  end
end
```

In view:

```erb
<%= render_page_title %>
```

Generated HTML:

```html
<title>Welcome | My Site</title>
```

### `render_body_tag`

In controller:

```ruby
class PagesController < ApplicationController
  def welcome
    @body_id = "welcome"
  end
end
```

In view:

```erb
<%= render_body_tag %>
```

Generated HTML:

```html
<!--[if lt  IE 7]> <body class="pages-controller welcome-action ie6">     <![endif]-->
<!--[if gte IE 7]> <body class="pages-controller welcome-action ie">      <![endif]-->
<!--[if !IE]>-->   <body class="pages-controller welcome-action">     <!--<![endif]-->
```

### `notice_message`

In controller:

```ruby
class PagesController < ApplicationController
  def welcome
    flash[:notice] = "Success message."
    flash[:alert] = "Error message."
  end
end
```

In view:

```erb
<%= notice_message %>
```

Generated HTML:

```html
<div class="alert alert-success alert-dismissable">
  <button aria-hidden="true" class="close" data-dismiss="alert">×</button>
  Success message.
</div>

<div class="alert alert-danger alert-dismissable">
  <button aria-hidden="true" class="close" data-dismiss="alert">×</button>
  Error message.
</div>
```

### `ibutton`


## Other Features

### Pagination

### Form


## Testing

    rspec


## License

Copyright 2014 Rocodev

MIT-LICENSE

