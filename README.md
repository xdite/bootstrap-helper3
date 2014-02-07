# Bootstrap Helper 3 (UNRELEASED)

View helpers and initializers for Bootstrap 3.


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

In view:

```erb
<%= ibutton("Home", root_path, :class => "btn btn-primary", :iclass => "glyphicon glyphicon-home") %>
```

Generated HTML:

```html
<a class="btn btn-primary" href="/">
  <i class="glyphicon glyphicon-home"></i>
  <span> Home</span>
</a>
```


## Initializers

### Form

In view:

```erb
<%= simple_form_for @user, :url => root_path do |f| %>
  <%= f.input :name %>

  <%= f.button :submit, :class => "btn btn-default" %>
<% end %>
```

Generated HTML:

```html
<form accept-charset="UTF-8" action="/" class="simple_form new_user" id="new_user" method="post">
  <!-- ... -->

  <div class="form-group string required user_name">
    <label class="string required" for="user_name">
      <abbr title="required">*</abbr>
      Name
    </label>
    <input aria-required="true" class="string required form-control" id="user_name" name="user[name]" required="required" type="text" value="John Smith">
  </div>

  <input class="button btn btn-default" name="commit" type="submit" value="Create User">
</form>
```


### Pagination

In controller:

```ruby
class PagesController < ApplicationController
  def welcome
    @posts = Post.paginate(:page => params[:page], :per_page => 10)
  end
end
```

In view:

```erb
<%= will_paginate @posts %>
```

Generated HTML:

```html
<ul class="pagination">
  <li class="prev previous_page">
    <a rel="prev start" href="/?page=1">← Previous</a>
  </li>
  <li>
    <a rel="prev start" href="/?page=1">1</a>
  </li>
  <li class="active">
    <a href="/?page=2">2</a>
  </li>
  <li>
    <a rel="next" href="/?page=3">3</a>
  </li>
  <li>
    <a href="/?page=4">4</a>
  </li>

  <!-- ... -->

  <li>
    <a href="/?page=9">9</a>
  </li>
  <li class="disabled">
    <a href="#"><span class="gap">…</span></a>
  </li>
  <li>
    <a href="/?page=99">99</a>
  </li>
  <li>
    <a href="/?page=100">100</a>
  </li>
  <li class="next next_page">
    <a rel="next" href="/?page=3">Next →</a>
  </li>
</ul>
```


## Example

See the [dummp app](https://github.com/xdite/bootstrap-helper3/tree/master/spec/dummy).


## Compatibility

`bootstrap_helpers3` works on Rails 3.2 and 4.0.


## Testing

    rspec


## License

Copyright 2014 Rocodev

MIT-LICENSE

