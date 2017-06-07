source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.0"
gem "pg"
gem "puma", "~> 3.7"
gem "sass-rails"
gem "uglifier", ">= 1.3.0"
# gem 'therubyracer', platforms: :ruby
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
# gem "redis", "~> 3.0"
gem "bcrypt", "~> 3.1.7"
gem "bootstrap-sass"
gem "autoprefixer-rails"
gem "jquery-rails"
gem "config"
gem "devise"
gem "cancancan"
gem "jquery-ui-rails"
gem "omniauth"
gem "omniauth-facebook"
gem "omniauth-google-oauth2"
gem "font-awesome-rails"
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry"
  gem "rails_best_practices"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
