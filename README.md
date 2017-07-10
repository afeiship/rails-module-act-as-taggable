# rails-module-act-as-taggable
> Rails module for act_as_taggable gem.

## step by step:
1. Add to gem
```rb
gem 'acts-as-taggable-on', :git => 'https://github.com/mbleigh/acts-as-taggable-on'
```

2. migrate:
```bash
## OR Add this to initial file:
## ActsAsTaggableOn.force_binary_collation = true
rake acts_as_taggable_on_engine:tag_names:collate_bin

## migrate db:
rake acts_as_taggable_on_engine:install:migrations
rake db:migrate
```

3. Modify model/article.rb
```rb
class Article < ApplicationRecord
    acts_as_taggable
end
```


## add description for tags:
```rb
# 1. rails g migration AddColumnToTags
# 2. rake db:migrate
# 3. here is the change:
class AddColumnToTag < ActiveRecord::Migration[5.1]
  def change
    add_column :tags, :description, :string
  end
end
```



## resources:
+ https://rubyplus.com/articles/4231-Tagging-using-Acts-as-Taggable-On-in-Rails-5
+ https://github.com/mbleigh/acts-as-taggable-on