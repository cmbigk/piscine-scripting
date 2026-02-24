

def remember_the_apple(shopping_list):
     if "apple" in shopping_list:
         return shopping_list
     elif "apple" not in shopping_list:
        shopping_list.append("apple")
        return shopping_list


    
    
    
    
    
 
"""  
list_without_apple = ['tomatoes', 'pastas', 'salt']
list_with_apple = ['tomatoes', 'pastas', 'apple', 'salt']

print(remember_the_apple(list_with_apple))
print(remember_the_apple(list_without_apple))
"""