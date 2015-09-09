#Solution File
class Node

    attr_accessor :value, :next_node

    def initialize val,next_in_line
        @value = val
        @next_nodex = next_in_line
        #puts "  " + value.to_s 
    end
end

class LinkedList

    def initialize val
        # Initialize a new node at the head
        @head = Node.new(val,nil)
    end
    
    def add(value)
        # Traverse to the end of the list
        # And insert a new node over there with the specified value
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
            # If the head is the element to be delete, the head needs to be updated
            @head = @head.next_node
        else
            # ... x -> y -> z
            # Suppose y is the value to be deleted, you need to reshape the above list to :
            #   ... x->z
            # ( and z is basically y.next_node )
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
        # Traverse through the list till you hit the "nil" at the end
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
	#puts a
	l.add(a)
	end
	l.display
	
	
end
