# README

This library allows to the user define an article object with recommendations data, and then retrieve a variable number of recommendations using Round-Robin approach, by default number of recommendations retrieved is 4.

## Ruby version

use 2.7.2

## Configuration

Clone this project, and then run:

```
$cd picking_problem
$bundle install
```

## Tests

Using rspec for test files, run:

```
rspec
```

## How to use

* Require file './lib/article.rb'
* If you prefer, you may make a gem using
  ```
  gem build picking_problem.gemspec
  ```
  and then install it:
  ```
  gem install ./picking_problem-0.1.0.gem
  ```
  When you need to use, require the class file:
  ```
  require 'article'
  ```

* Declare a new article object, and initialize with json data defined by archdaily
  ```
  article = Article.new(json_data)
  ```
* Call recomendations method, to get filter recommendations
  ```
  article.recommendations
  ```
  Default number of recommendations is 4 or less, depending of lenght of json data
  You can modify this number sending the parameter in the recomendations method
  ```
  article.recommendations(6)
  ```

Happy testing and code!

