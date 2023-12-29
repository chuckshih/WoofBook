source "https://rubygems.org"

# 套件: Rails 應用程式的 Web 框架，用於構建強大的 Web 應用程式。
gem "rails", "~> 7.1.2"

# 套件: Rails 原始資產流水線，用於處理和編譯應用程式中的資產文件。
gem "sprockets-rails"

# 套件: 使用 SQLite3 作為 Active Record 的資料庫。

group :development, :test do
  gem 'sqlite3'
end

# 套件: 使用 postgresql 作為 Production Record 的資料庫。
group :production do
  gem 'pg'
end

# 套件: Puma Web 伺服器，用於啟動和運行 Rails 應用程式。
gem "puma", ">= 5.0"

# 套件: 使用 ESM import maps 進行 JavaScript。
gem "importmap-rails"

# 套件: Turbo-rails，用於實現 Hotwire 的 SPA-like 頁面加速器。
gem "turbo-rails"

# 套件: Hotwire 的 JavaScript 框架，用於構建現代 Web 應用程式。
gem "stimulus-rails"

# 套件: 用於輕鬆構建 JSON API 的 Jbuilder。
gem "jbuilder"

# 套件: 在生產環境中使用 Redis adapter 來運行 Action Cable。
# gem "redis", ">= 4.0.1"

# 套件: 使用 Kredis 在 Redis 中獲取更高級別的數據類型。
# gem "kredis"

# 套件: 使用 Active Model has_secure_password，實現更安全的密碼功能。
# gem "bcrypt", "~> 3.1.7"

# 套件: 在 Windows 中使用 tzinfo-data gem 來處理時區資訊。
gem "tzinfo-data", platforms: %i[windows jruby]

# 套件: 通過緩存減少啟動時間；在 config/boot.rb 中需要。
gem "bootsnap", require: false

# 套件組: 開發和測試環境中使用的套件。
group :development, :test do

# 套件: 使用 debug gem 進行 Rails 應用程式的調試。
  gem "debug", platforms: %i[mri windows]
end

# 開發環境套件組。
group :development do
  
# 套件: 使用 web-console 進行例外頁面上的控制台。
  gem "web-console"
  
# 套件: 添加速度標誌（Speed badges）。
  # gem "rack-mini-profiler"

# 套件: 在慢機器/大應用程式上加速命令。
  # gem "spring"
end

# 測試環境套件組。
group :test do
  # 套件: 使用 capybara 進行系統測試。
  gem "capybara"

  # 套件: 使用 selenium-webdriver 進行測試。
  gem "selenium-webdriver"
end