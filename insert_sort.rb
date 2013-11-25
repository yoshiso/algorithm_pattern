
# [todo] - fix me!
def sort!(ary)
  for i in 1..ary.size - 1
    insert(ary,i,ary[i])
  end
end

def insert(ary,pos,value)
  i = pos - 1

  while i>= 0 and ary[i] > value 
    ary[i+1] = ary[i]
    i -= 1
  end

  ary[i+1] = value
end

sort!(ary)

p ary





def sort(ary)

  for i in 1..ary.size-1
    insert(ary,i,ary[i])
  end
end


def insert(ary, pos, value)
  i = pos - 1

  while i >= 0 and ary[i] > value
    ary[i+1] = ary[i]
    i-=1
  end
  ary[i+1] = value
end


sort(ary)

p ary
ary = [1,4,8,9,11,15,7,12,13,6]
