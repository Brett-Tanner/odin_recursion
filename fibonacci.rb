def fibs(n)
   if n == 1
    [0]
   elsif n == 2
    [0, 1]
   else
    sequence = [0, 1]
    last_index = n - 1
    for i in 2..last_index do
        sequence << sequence[i - 2] + sequence[i - 1]
    end
    sequence
   end
end

def fibs_rec(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2
    sequence = fibs_rec(n - 1)
    sequence << sequence[-2] + sequence[-1]
    sequence
end

p fibs(8)
p fibs_rec(8)