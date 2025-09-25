def foo(a)
  puts a
end

def bar
  puts "second method"
end

foo "asd333"
bar do
  puts "inside block"
end
