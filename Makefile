.PHONY: test

test:
	bundle exec rubocop
	bundle exec rspec potato_spec.rb
