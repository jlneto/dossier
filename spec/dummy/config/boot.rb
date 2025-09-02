# frozen_string_literal: true
# Standard Rails boot file for dummy app used in specs
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
