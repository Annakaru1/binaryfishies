class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end
end

class BinaryTreeSort
  def initialize
  
  end

  def display
    traverse (@top)
  end

  def traverse (node)
    if(node==nil)
      return
    end

    if(node.left)
      traverse(node.left)
    end
      puts node.payload

    if(node.right)
      traverse(node.right)
    end
  end

  def sort(array)
    @array = array
    @top = BinaryTree.new(nil,nil,nil)
    array.each do |number|
      #print "number = ", number, "\n"

      if @top.payload == nil
      #  print "defining top node \n"
         @top.payload = number

      else
        addchild(@top, number)
        
      end  
    end      
  end

  def addchild(head, number)
    if head.payload < number
      #print "defining right node \n"
      if head.right == nil
        right = BinaryTree.new(number, nil, nil)
        head.right = right
      else
        addchild(head.right, number)
      end

    elsif head.payload > number
      #print "defining left node \n"
      if head.left == nil
        left = BinaryTree.new(number, nil, nil)
        head.left = left
      else
        addchild(head.left, number)
      end
            
    else
      print "invalid data\n"
    end
  end

end


#---expect(BinaryTreeSort.sort(array)).to eq expected--#

mySort = BinaryTreeSort.new
mySort.sort([7, 4, 9, 1, 6, 14, 10])
mySort.display
puts
mySort.sort([0, 6, 11, -3, 8, 16, 12])
mySort.display

#seven = BinaryTree.new(7, nil, nil)
#five  = BinaryTree.new(5, nil, nil)
#four  = BinaryTree.new(4, nil, nil)
#six   = BinaryTree.new(6, nil, seven)
#three = BinaryTree.new(3, nil, six)
#two   = BinaryTree.new(2, four, five)
#trunk = BinaryTree.new(1, two, three)