source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# bootstrapテーマのhonoka http://qiita.com/iguchi1124/items/7a2fe94d0897e217290d
gem 'honoka-rails', '>= 3.3.6.3'
# icalendarで出力する http://docs.komagata.org/5105
gem 'icalendar'
# output qr code
gem 'rqrcode'
gem 'rqrcode_png'
# autolink
gem 'rails_autolink'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
#image
gem 'rmagick', require: 'RMagick'
gem 'carrierwave'
gem 'cloudinary'
gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'

#seed用
gem 'faker'
gem 'forgery_ja'
gem 'forgery'
gem 'gimei'

group :development, :test do
  gem 'sqlite3'
  gem 'pry-byebug'
  gem 'quiet_assets'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
  # 本番環境（Heroku）ではpostgressを使う
  gem 'pg'
end
