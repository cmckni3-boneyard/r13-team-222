# Load the Rails application.
require File.expand_path('../application', __FILE__)

RailsBootstrap::Application.configure do
  config.assets.precompile.shift

  # Explicitly register the extensions we are interested in compiling
  config.assets.precompile.push(Proc.new do |path|
    File.extname(path).in? [
      '.html', '.erb', '.haml',                 # Templates
      '.png',  '.gif', '.jpg', '.jpeg',         # Images
      '.eot',  '.otf', '.svc', '.woff', '.ttf', # Fonts
    ]
  end)
end

# Initialize the Rails application.
RailsBootstrap::Application.initialize!
