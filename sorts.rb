def bubble_sort(arr)
  len = arr.length - 1
  sorted = false
  until sorted
    sorted = true
    (0...len).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        sorted = false
      end
    end
  end
  arr
end


def merge_sort(arr)
  return arr if arr.length <= 1
  mid_idx = arr.length / 2
  merge(merge_sort(arr.take(mid_idx)),merge_sort(arr.drop(mid_idx)))
end

def self.merge(left, right)
  merged_arr = []
  until left.empty? || right.empty?
    case left.first <=> right.first)
    when -1
      merged_arr << left.shift
    when 0
      merged_arr << left.shift
    when 1
      merged_arr << right.shift
    end
  end
    merged_arr + left + right
end
