require 'rubygems'
require 'json'

members = JSON.parse(
  File.read(File.dirname(__FILE__) + "/members.json"))

puts "# Members"
puts "This page reflects the data in `members/members.json` and
      can be rebuilt by running `make` from the project root. Ruby,
      RubyGems, and the `json` gem are dependencies of the rendering script."
puts "<table>"
puts "  <tr><td></td><td>Name</td><td>Languages</td><td>Platforms</td></tr>"
members.each {|member|
  puts "  <tr>
    <td><img src='#{member['avatar']}?s=50' width='50px'></td>
    <td><a href='http://github.com/#{member['github']}'>#{member['name']}</a></td>
    <td>#{member['languages'].join(', ')}</td>
    <td>#{member['platforms'].join(', ')}</td>
  </tr>" 
}
puts "</table>"

