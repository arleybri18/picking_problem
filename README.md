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

