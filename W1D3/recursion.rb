def sum_to(n)
    return nil if n < 1
    return 1 if n == 1
    n + sum_to(n - 1)
end

def add_numbers(nums_array)
    return nil if nums_array.empty?
    return nums_array[0] if nums_array.length == 1
    nums_array.pop + add_numbers(nums_array)
end

def gamma_fnc(n)
    return nil if n == 0
    return 1 if n == 1
    (n - 1) * gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    if flavors.pop == favorite
        true
    else
        ice_cream_shop(flavors, favorite)
    end
end

def reverse(string)
    return "" if string.empty?
    letters = string.chars
    letters.pop + reverse(letters.join)
end
