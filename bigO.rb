require_relative 'sorts'
class Octopus

  def sluggish(arr)
    bubble_sort(arr).last
  end

  def dominant(arr)
    merge_sort(arr).last
  end

  def clever(arr)
    l = arr.length - 1
    (0..l-1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
    arr.last
  end

  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

  def slow_dance(dir, tiles_arr)
    tiles_arr.index(dir)
  end

  tiles_hash = {"up" => 0, "right-up" => 0, "right" => 0, "right-down" => 0, "down" => 0, "left-down" => 0, "left" => 0,  "left-up" => 0 }

  def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
  end


end
