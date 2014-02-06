# Bootstrap Helper 3

View helpers for bootstrap 3.


## Installation

Add the gem to `Gemfile`:

    gem "bootstrap_helper3"

And then run `bundle install`.


## Helpers

### `render_page_title`


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

```ruby
render_body_tag
```

Generated HTML:

```html
<!--[if lt  IE 7]> <body class="pages-controller welcome-action ie6">     <![endif]-->
<!--[if gte IE 7]> <body class="pages-controller welcome-action ie">      <![endif]-->
<!--[if !IE]>-->   <body class="pages-controller welcome-action">     <!--<![endif]-->
```

### `notice_message`


## Other Features

### Pagination

### Form


## Testing

    rspec


## License

Copyright 2014 Rocodev

MIT-LICENSE

