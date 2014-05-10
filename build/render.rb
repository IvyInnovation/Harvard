require 'rubygems'
require 'json'

members = JSON.parse(
  File.read(File.dirname(__FILE__) + "/members.json"))

puts "# Hackers of Harvard"
puts "## Members"
puts "This page reflects the data in `build/members.json` and
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
puts "## Landing Page"
puts "We have set up a temporary [landing page](http://ivyinnovation.github.io/Harvard/) 
			on [Github Pages](https://pages.github.com/). The code can be found in the `gh-pages` 
			branch of this repository. If you are interested in web development and design, feel 
			free to contribute."