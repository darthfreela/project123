# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bootstrap-3.3.5')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'adminlte-2.3.0')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'font-awesome-4.4.0')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'ionicons-2.0.1')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( footer.js )