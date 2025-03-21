#UM
# Permutation? Combination? Look into them
# Arrays

#Plan
#Start Simple trying to solve Input 1: Output 1

#One Way:
# def climbing_staris(n)
#     return n if n<=3

#     return climbing_staris(n-1) + climbing_staris(n-2)
# end

def climbing_staris(n, memo={})
    pp memo
    
    return n if n<=3

    return memo[n] if memo.has_key?(n)

    ways = climbing_staris(n-1, memo) + climbing_staris(n-2, memo)

    memo[n] = ways

    return ways
end
pp climbing_staris(1)
pp climbing_staris(2)
pp climbing_staris(3)
pp climbing_staris(4)
pp climbing_staris(5)
pp climbing_staris(8)
#pp climbing_staris(20)