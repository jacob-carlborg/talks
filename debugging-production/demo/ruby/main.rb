TracePoint.new(:call){}.enable

def foo(a)
  puts a
end

def bar
  puts "second method"
end

foo "asd"
bar do
  puts "inside block"
end
