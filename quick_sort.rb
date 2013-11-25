
#
# QuickSort
#
#
#def quick_sort(ary,left,right)
#  return if left >= right 
#  pivot = partition(ary,left,right)
#  quick_sort(ary,left,pivot-1)
#  quick_sort(ary,pivot+1,right)  
#end
#
##
## aryをpivotを境にしてpivotより大きい数字pivot以下の数字に左右に分割する
## partitionを分けられる場合はpivotのindex
##
#def partition(ary,left,right)
#  pivot = ary[right]
#  store = left
#  for i in left..right -1
#    if(ary[i] <= pivot)
#      tmp = ary[i]
#      ary[i] = ary[store]
#      ary[store] = tmp
#      store += 1
#    end
#  end
#  
#  tmp = ary[right]
#  ary[right] = ary[store]
#  ary[store] = tmp
#  store
#end
#
#def sort(array)
#  quick_sort(array,0,array.size-1)
#end
#
array = %w(2 4 63 9 3 6 0 7 1 4 7).map(&:to_i)
##p partition(array,0,array.size-1)
##p array
#sort(array)
#p array

def sort(array)
  array.sort{|x,y| x <=> y}
end

p sort(array)