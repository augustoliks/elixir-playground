add_anonymous_function = fn x, y -> x + y end

IO.inspect add_anonymous_function.(15, 35), label: "Anonymous Functions Return"
IO.inspect is_function(add_anonymous_function, 2), label: "Verify if function args receive 2 args"

x = 10
y = 10
IO.inspect (fn x, y -> x * y end).(10, 20), label: "variable inside anon-function dont affect sorround varibles"
IO.inspect x, label: "x"
IO.inspect y, label: "y"
