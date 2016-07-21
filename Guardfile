guard :shell do
  watch  /.*\.rb$/ do |m|
    #n m[0], 'Changed'
    `ruby test/bottles_test.rb`
  end
end
