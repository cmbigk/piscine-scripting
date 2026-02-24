

def modulo(a, b):
    if (b == 0):
        return 0
    elif (b > a):
        return 0
    else:
        return a % b 

def divide(a, b):
    if (b == 0):
        return 0
    elif (b > a):
        return 0
    else:
        return a / b 

def integer_division(a, b):
    if (b == 0):
        return 0
    elif (b > a):
        return 0
    else:
        return int(a / b) 
    
    
    
print(modulo(10, 3))
print(divide(10, 3))
print(divide(10, 0))
print(integer_division(10, 3))