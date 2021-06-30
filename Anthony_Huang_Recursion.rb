
def sum_to(n)
    return nil if n < 1       # prevents stack overflow
    return 1 if n == 1        # base case

    n + sum_to(n - 1)         # inductive step
end
## sum_to examples
# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil
def add_numbers(arr)
    return nil if arr.length < 1
    return arr[0] if arr.length == 1            # base case returns an integer to be added back up to arr[0]

    arr[0] + add_numbers(arr[1..-1])            # ruby reads from left to right, so it adds first then checks next stack
end
# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(n)
    return nil if (n - 1) < 0
    return 1 if n == 1
    (n - 1) * gamma_fnc(n - 1)
end

# # Γ(n) = (n-1)!
# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(arr, favorite_flavor)
    return false if arr.length == 0
    arr[0] == favorite_flavor ? true : ice_cream_shop(arr[1..-1], favorite_flavor)
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(str)
    return str if str == ""
    reverse(str[1..-1]) + str[0]
end
# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""