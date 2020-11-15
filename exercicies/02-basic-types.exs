var_integer = 1
IO.inspect var_integer, label: "Integer\t\t"

var_integer_hexadecimal = 0x1F
IO.inspect var_integer_hexadecimal, label: "Hex Repr\t"

var_integer_octal = 0x8
IO.inspect var_integer_octal, label: "Octal Repr\t"

var_integer_binary = 0b1010
IO.inspect var_integer_binary, label: "Binary Repr\t"

var_scientify_notation = 1.0e-10
IO.inspect var_scientify_notation, label: "Scientify Notation\t"

var_float = true
IO.inspect var_float, label: "Float\t\t"

var_atom = :atom
IO.inspect var_atom, label: "Atom\t\t"

var_list = [1, 2, 3, "carlos", true, false]
IO.inspect var_list, label: "List\t\t"

var_tuple = {1, 2, 3}
IO.inspect var_tuple, label: "Tuple\t\t"

if true == :true do
  IO.puts "boolean is atom"
end

if :carlos_message_ok == :carlos_message_ok do
  IO.puts "atom works like enumerate in Elixir"
end

if :carlos_message_ok != "carlos_message_ok" do
  IO.puts "atom dont accept string comparation"
end

if is_atom(CarlosNeto) do
  IO.puts "if variable startswith Uppercase Letter, is defined like Atom type"
end

# String Interpolation

x = "carlos"
IO.puts "Simple String Interpolation #{x}"

x = CarlosNeto
IO.puts "String interpolarion with Atom Uppercase-Variable type: #{x}"

x = :AugustoLiks
IO.puts "String interpolarion with Atom variable type: #{x}"

x = true
IO.puts "String interpolarion with Boolean variable type: #{x}"


var_list = [1, 2, 3, "Carlos", :Carlos, Carlos, false, false]
IO.inspect var_list, label: "Example List"

list_lenght = length var_list
IO.inspect list_lenght, label: "list lenght"

head_list = hd var_list
IO.inspect head_list, label: "Head List"

head_list = tl var_list
IO.inspect head_list, label: "Tail List"

var_list_02 = [4, 5, 6, "Neto", :Neto, Neto, true, true]
IO.inspect var_list_02, label: "List 02"

new_list = var_list ++ var_list_02
IO.inspect new_list, label: "New List"

IO.inspect new_list -- [Carlos], label: "Carlos Uppercase-Atom removed"
IO.inspect new_list -- [:Carlos], label: "Carlos Atom removed"
IO.inspect new_list -- [true], label: "Booelan true removed"


IO.inspect [65, 66, 67], label: "List Contained Ascii Values"


if 'carlos' == "carlos" do
  IO.puts "one quote define charlist, double quotes define string"
end

my_tuple_01 = {:ok, "carlos"}
IO.inspect my_tuple_01, label: "Tuple"
IO.inspect (fn x -> tuple_size(x) end).(my_tuple_01), label: "Tuple_01 elements"

my_tuple_02 = put_elem(my_tuple_01, 1, "neto")
IO.inspect my_tuple_02, label: "New Tuple"
IO.inspect (fn x -> tuple_size(x) end).(my_tuple_02), label: "Tuple_02 elements"

my_tuple_03 = put_elem(my_tuple_02, 2, "augusto")
IO.inspect my_tuple_03, label: "New Tuple"
IO.inspect (fn x -> tuple_size(x) end).(my_tuple_03), label: "Tuple_03 elements"

x = [1, 2, 3, 4]

IO.inspect x[1], label: "get value in List"
