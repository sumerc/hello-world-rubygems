# frozen_string_literal: true

require 'test_helper'

module Hello
  module World
    class RubygemsTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::Hello::World::Rubygems::VERSION
      end

      def test_always_true
        assert_equal 1, 1
      end
    end
  end
end
