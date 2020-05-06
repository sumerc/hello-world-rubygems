# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'hello/world/rubygems'

require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
