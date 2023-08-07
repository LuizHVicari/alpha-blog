# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

## Configuration

### Bootstrap

To install bootstrap, I followed these steps:

1. Uncomment

    ```
    gem "sassc-rails"
    ```

    in the GemFile.

1. Add

    ```
    gem "bootstrap", "~> 5.2.0"
    gem 'jquery-rails'
    ```

    after the gem rails.

1. Run

    ```
    bundle install
    ```

1. Change the extension from app/assets/styleshetts/application.css to .scss.

1. Write

    ```
    @import "bootstrap";
    ```

    in the app/assets/styleshetts/application.scss

1. Run

    ```
    rails assets:precompile
    ```

1. Add

    ```
    Rails.application.config.assets.precompile += %w(bootstrap.min.js popper.js)
    ```

    in config.initializers/assets.rb

1. Add

    ```
    pin "popper", to: 'popper.js', preload: true
    pin "bootstrap", to:'bootstrap.min.js', preload: true
    ```

    to config/importmap/rb

1. Add

    ```
    import "popper"
    import "bootstrap"
    ```

    to app/javascript/application.js

Obs: to update css, we need to stop the server and run

```
    rails assets:precompile
```
then we can start the server again.
