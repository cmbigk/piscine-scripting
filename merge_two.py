import json

def merge_two(f_dic):
    newDict = {}
    
    while True:
        print("Add a new entry:")
        key = input("key: ")
        
        if key == "exit":
            break
        
        value = int(input("value: "))
        newDict[key] = value
        
    
    merged = {**f_dic, **newDict}
    result =json.dumps(merged)
    return result
    