#!/usr/bin/env guard

group :spec do
  guard :rspec, cmd: 'rspec', failed_mode: :focus, all_after_pass: true, all_on_start: true, notification: true do
    # Library
    watch(%r{^lib/(.+)\.rb$})                  { |m| "spec/lib/#{m[1]}_spec.rb" }

    # Specifications
    watch(%r{^spec/.+_spec\.rb$})

    # Spec helpers
    watch('spec/capistrano_unicorn_helper.rb') { 'spec' }
    watch('spec/spec_helper.rb')               { 'spec' }
  end
end