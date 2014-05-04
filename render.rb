require 'rubygems'
require 'json'

members = JSON.parse(File.read("members.json"))

puts "# Members\n\n"
puts "<table>"
puts "  <tr><td></td><td>Name</td><td>Languages</td><td>Platforms</td></tr>"
members.each {|member|
  puts "  <tr>
    <td><img src='#{member['avatar']}?s=50' width='50px'></td>
    <td>#{member['name']}</td>
    <td>#{member['languages'].join(', ')}</td>
    <td>#{member['platforms'].join(', ')}</td>
  </tr>" 
}
puts "</table>"

