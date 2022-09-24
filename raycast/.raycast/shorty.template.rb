#!/usr/bin/env ruby

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Shorty
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔗
# @raycast.packageName Shorty
# @raycast.argument1 { "type": "text", "placeholder": "target" }
# @raycast.argument2 { "type": "text", "placeholder": "slug" }

require 'json'
require 'net/http'
require 'uri'

AIRTABLE_API_KEY    = ''
AIRTABLE_BASE_ID    = ''
AIRTABLE_TABLE_NAME = ''

if AIRTABLE_API_KEY.empty? || AIRTABLE_BASE_ID.empty? || AIRTABLE_TABLE_NAME.empty?
  puts 'Missing credentials'
  exit(1)
end

target = ARGV[0]
slug = ARGV[1]

uri = URI("https://api.airtable.com/v0/#{AIRTABLE_BASE_ID}/#{AIRTABLE_TABLE_NAME}")
req = Net::HTTP::Post.new(uri)
req['Authorization'] = "Bearer #{AIRTABLE_API_KEY}"
req['Content-Type'] = 'application/json'
req.body = JSON.dump({
                       records: [{ fields: { target: target, slug: slug } }]
                     })

res = Net::HTTP.start(uri.hostname, uri.port, { use_ssl: uri.scheme == 'https' }) do |http|
  http.request(req)
end

if res.code == '200'
  puts "Shortlink created at https://angad.xyz/#{slug}"
else
  puts "An error occurred: #{res.body}"
end
