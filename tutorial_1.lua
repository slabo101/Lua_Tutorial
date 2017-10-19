--[[Tutorial 1--]]

--[[
Keywords:
and
break
do
else
elseif
end
false
for
function
if
in
local
nil
not
or
repeat
return
then
true
until
while
--]]

print("Hello World")

io.write("Hello world, from ",_VERSION,"!\n") --Alternate print

x, y = 1, 2 -- x =  1,  y = 2
a, b = 10   -- a = 10, b = nil

print("Value of A: ", x)
print("Value of B: ", y)

print("Swapping values ...")
x, y = y, x

print("Value of A: ", x)
print("Value of B: ", y)

print(type("Type"))
print(type(x*5.8))
print(type(true))
print(type(nil))
print(type(print))
print(type(type(ABC)))

--[[
Arithmetic Operators:
+ - * / % ^ -

Relational Operators:
== ~=(NOT EQUAL) > < >= <=

Logical Operators:
and not or

Misc.
.. Concatenate Strings
#  string/table length
--]]

x = 0

print ("While: ")
while (x < 10) do
	print(x)
	x = x + 1
end

print ("For: ")
for x=0, 9, 1 do
	print(x)
end

x = 0
print ("Repeat ... until: ")
repeat
	print(x)
	x = x + 1
until (x == 10)

print ("If: ")
if (x == 10) then
	print(y)
end

print ("If ... elseif ... else: ")
if (x == 10) then
	print(y)
elseif (x > 10) then
	print(x)
else
	print(0)
end

function max(num1, num2)
	if (num1 >= num2) then
		result = num1
	else
		result = num2
	end
	return result
end

print("The max of x and y is: ", max(x, y))

myPrintFunc = function(str)
	print("Input: ", str)
end

function add_print(num1, num2, print_s)
	print_s(num1+num2)
end

addFunc = add_print

myPrintFunc(10)
add_print(10, 15, myPrintFunc)
addFunc(10, 15, myPrintFunc)

function average(...)
	result = 0
	local arg={...}
	for i, v in ipairs(arg) do
		result = result + v
	end
	return result/#arg
end

print("The average is: ", average(10, 12, 56, 34, 6))

str1 = "LUA"
str2 = 'lua'
str3 = [["lUa"]]
print(str1, ", ", str2, ", ", str3)

-- String operations
name = "Matthew D. Sabo"
print(string.upper(name))
print(string.lower(name))

--Replace substring
new_name = string.gsub(name, "D.", "")
print(new_name)

--Reversing Strings
reverse_name = string.reverse(name)
print(reverse_name)

--Formatting
month, day = 8, 17
print(string.format("My birthday is: %02d/%02d", month, day))
print(string.format("Pi to 5 decimal places is: %.5f", 3.141592653589))

-- Byte/char conversion
print(string.byte(name)) --first byte
print(string.byte(name, 2)) --next byte
print(string.byte(name, -2)) --second to last byte
print(string.byte(name, -1)) --last byte
print(string.char(77)) --ASCII char for 77

print("My name is "..name) --Concatenate
print(string.rep(name, 3)) --Repeat 3 times

array = {"array1", "array2"}
for i=0,2 do -- if step is not specified the default is 1
	print(array[i]) --Indexing starts at 1 so array[0] is nil
end

array = {}
for i=-2,2 do
	array[i] = i * 2 --Can insert objects at indexes <= 0
end
for i=-2,2 do
	print(array[i])
end

array = {}

for i=0,2 do
	array[i] = {} --insert new array at index i to create multi-dimensional array
	for j=0,2 do
		array[i][j] = i+j
	end
end

for i=0,2 do
	for j=0,2 do
		print(array[i][j])
	end
end