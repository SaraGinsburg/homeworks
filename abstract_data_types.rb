class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end


  class Queue
    def initialize
      @queue = []
    end

    def enqueue(el)
      @queue.push(el)
    end

    def dequeue(el)
      @queue.shift(el)
    end

    def show(el)
      @queue.dup
    end
  end

  class Map
    def initialize
      @map = []
    end

    def assign(key, value)
       if @map.lookup(key) == nil
         @map.push([key, value])
       else
         @map.lookup(key)[1] = value
       end
     end

    def lookup(key)
      @map.select {|el| el[0] == key}
    end

    def remove(key)
      @map.reject {|el| el[0] == key}
    end

    def show
      @map.dup
    end

  end
