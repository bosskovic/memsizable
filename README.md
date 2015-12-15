# memsizable
Adds methods for calculating the record size (in bytes) and Model record average size.

**Installation**

`gem install memsizable`

or in Gemfile:

`gem memsizable`
 
In any model:
 
```ruby
  class MyModel < ActiveRecord::Base
    include Memsizable
  end
```

**Usage**

```
Loading development environment (Rails 4.2.4)
pry(main)> MyModel.first.memsize
=> 222
pry(main)> MyModel.average_memsize
=> 904
```

Tested on:
- ruby 2.2.3
- Rails 4.2.4
