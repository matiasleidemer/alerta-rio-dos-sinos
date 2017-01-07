# Automatically require all files under lib/features
Dir[File.join(File.dirname(__FILE__), '*.rb')].each { |file| require_relative file }
