require 'open-uri'
require 'nokogiri'

url = 'http://blog.honeybadger.io/ruby-s-unicode-support/'

doc = Nokogiri::HTML(open(url))

table = doc.css('table.table').first
rows = table.css('tr')
column_names = rows.shift.css('th').map(&:text)

text = rows.inject([]) do |memo, tr|
  memo << Hash[column_names.map(&:downcase).map(&:to_sym).zip(tr.css('td').map(&:text).map(&:strip))]
end.inject('') do |memo, res|
  it = <<~EOF
    it '#{res[:method]}' do
      (#{res[:test]}).must_equal(#{res[:expected]})
    end
  EOF
  memo << it << "\n"
end

File.open("out.rb", 'w') { |f| f.write(text) }
