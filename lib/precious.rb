# frozen_string_literal: true

require 'faraday'
require 'oj'
require_relative "precious/base"
require_relative "precious/books"
require_relative "precious/chapters"
require_relative "precious/characters"
require_relative "precious/movies"
require_relative "precious/quotes"
require_relative "precious/version"

module Precious
  class Error < StandardError; end
end
