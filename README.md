# README

Barebone Rails install with Apartment and Jsonapi-resources gems.

This repos is meant for testing against bug https://github.com/cerebris/jsonapi-resources/issues/1316

A Monkey patch solution available at: `config/initializers/jsonapi_resources.rb` (uncomment and restart app to use).

## How to test

1. Pull repo, bundle install dependencies, setup database, import seeds, start app.
2. Browse http://localhost:3000/api/posts (tenant-specific data)
  * Should respond successfully (no data, but that doesn't matter)
3. Browse http://localhost:3000/api/account (shared model - singleton resource)
  * Should respond sucessfully (show Account info) - with Patch or proper solution
  * Break with SQL error without patch/solution
