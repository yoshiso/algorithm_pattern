#ruby-2.0.0
#HeapSort

def sort(ary)
  buildHeap(ary)
  i = ary.size - 1
  while i > 0
    #配列の最後尾iにヒープ木から最大値を抜いて入れて行く
    ary[0],ary[i] = ary[i],ary[0]
    #再度縮小したヒープ木に生成し直す
    heapify(ary,0,i)
    i -= 1
  end
end

#
# ヒープツリーを生成する関数
# @params ary ヒープツリーにしたい配列
#
def buildHeap(ary)
  i = ary.size/2 -1
  while i >= 0
    heapify(ary, i, ary.size)
    i -= 1
  end
end

#
# @params ary      変形するターゲット配列
# @params idx    heapifyを行った回数のindex
# @params max      
#
def heapify(ary,idx,max)
  l_idx = idx * 2 + 1
  r_idx = idx * 2 + 2
  largest = (l_idx < max and ary[idx] < ary[l_idx]) ? l_idx : idx
  largest = (r_idx < max and ary[largest] < ary[r_idx]) ? r_idx : largest
  if idx != largest
    ary[largest], ary[idx] = ary[idx], ary[largest]
    heapify(ary,largest,max)
  end
end

for i in 1..3 do
  puts i
end

ary = %w(5 3 16 2 10 14 8 9 6 1 4).map(&:to_i)
sort(ary)
p ary
