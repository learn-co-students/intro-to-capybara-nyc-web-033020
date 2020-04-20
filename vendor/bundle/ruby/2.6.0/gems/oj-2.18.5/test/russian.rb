#!/usr/bin/env ruby
# encoding: UTF-8

$: << File.dirname(__FILE__)

%w(lib ext test).each do |dir|
  $LOAD_PATH.unshift File.expand_path("../../#{dir}", __FILE__)
end

require 'oj'

s = %|{"response":[{"id":7250,"from_id":1382722,"owner_id":1382722,"date":1415964230,"post_type":"post","text":"Сдается комната в 2-х комнатной квартире с декабря месяца в Люберцах. (р-он Красная Горка)\nСдается желательно семейной паре (можно рассмотреть и другие варианты). \nв комнате одна большая . Стол, Шкаф, комод.\nДля проживания все есть. в Соседней комнате проживают два парня (из Чувашии)\nДо города можно доехать на маршрутке (20 мин.) на против дома остановка, на электричке (до электрички 15-20 мин. пешком) или на автобусе\nЦена 15 тыс. за комнату + коммунальные услуги\nЗвоните 8\/903\/012-34-25 венера","comments":{"count":0},"likes":{"count":1},"reposts":{"count":0}}]}|

r = Oj.load(s)

text = r["response"][0]["text"]
puts "#{text}"
puts "#{text.encoding}"
