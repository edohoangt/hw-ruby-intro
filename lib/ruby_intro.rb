# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    res = 0
    arr.each do |elem| res += elem end
    return res
end

def max_2_sum arr
    sorted_arr = arr.sort
    sorted_arr.reverse!

    len = arr.length()
    if len == 0
        return 0
    elsif len == 1
        return arr[0]
    end

    return sorted_arr[0] + sorted_arr[1]
end

def sum_to_n? arr, n
    if arr.length() == 0
        return false
    end
    
    st = Hash[]
    arr.each do |elem| 
        if st.has_key?(n - elem)
            return true
        end

        st[elem] = 1
    end

    return false
end

# Part 2

def hello(name)
    return "Hello, " + name
end

def starts_with_consonant? s
    if s.length() == 0 || !(s =~ /^[a-zA-Z]+$/)
        return false
    end

    vowels = "ueoaiUEOAI"
    return !vowels.include?(s[0])
end

def binary_multiple_of_4? s
    return (s =~ /^(0|1)+(00)$/) || s == "0"
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if isbn.length() == 0 || price <= 0
            raise ArgumentError.new("invalid isbn or price!")
        end

        @isbn, @price = isbn, price
    end

    def isbn
        @isbn
    end

    def price
        @price
    end

    def isbn=(val)
        if isbn.length() == 0
            raise ArgumentError.new("invalid isbn!")
        end
        @isbn = val
    end

    def price=(val)
        if price <=  0
            raise ArgumentError.new("invalid price!")
        end
        @price = val
    end

    def price_as_string
        return "$%0.2f" % [@price]
    end
end
