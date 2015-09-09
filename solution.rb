#Solution File
class Node

    attr_accessor :value, :next_node

    def initialize val,next_in_line
        @value = val
        @next_nodex = next_in_line
    end
end

class LinkedList

    def initialize val
        @head = Node.new(val,nil)
    end
    
    def add(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(value,nil)
        self    
    end

    def delete(val)
        current = @head
        if current.value == val
            @head = @head.next_node
        else
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 

            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end
    
    def display
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join(",")
    end

	l = LinkedList.new (100)
	a=nil
	while(a!=-1)
	a=gets.chomp
	if a.to_i ==-1
	break
	end
	l.add(a)
	end
	l.display
	
	
end
