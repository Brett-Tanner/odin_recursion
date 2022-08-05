def sum_multiples(limit)
    multiples_three(limit) + multiples_five(limit)
end

def multiples_three(limit, multiplier = 1)
    return 0 if 3 * multiplier >= limit
    3 * multiplier + multiples_three(limit, multiplier + 1)
end

def multiples_five(limit, multiplier = 1)
    return 0 if 5 * multiplier >= limit
    # prevents overlap with multiples of 3
    return multiples_five(limit, multiplier + 1) if 5 * multiplier % 3 == 0
    5 * multiplier + multiples_five(limit, multiplier + 1)
end

p sum_multiples(1000)