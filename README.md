# Spree Admin Page for S3 configuration

Please not that this extension is just a simple integration 

Compatible with Solidus

## Installation

1. Add the gem to your `Gemfile`:
  ```ruby
  gem 'spree_admin_s3', github: 'jdar/spree_admin_s3', branch: 'master'
  ```

2. Run:
  ```sh
  $ bundle install
  $ rails g spree_admin_s3:install
  ```


## Configuration

Preferences can be updated within the admin panel under "configuration" then "Images".

Or ....

```ruby
SpreeAdminS3::Config.tap do |config|
  #TODO: config. ... = ...
end
```
---

## Language-Support

No language support, currently.

---

## Contributing

See corresponding [guidelines][8]

---

[7]: https://github.com/jdar/spree_admin_s3/blob/master/LICENSE.md
[8]: https://github.com/jdar/spree_admin_s3/blob/master/CONTRIBUTING.md
