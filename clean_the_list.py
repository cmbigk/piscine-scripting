def clean_list(shopping_list):
    if not shopping_list:
        return []

    # Strip first, then check for milk
    shopping_list = [item.strip() for item in shopping_list]  # ← clean all first

    if "milk" not in shopping_list:
        shopping_list.append("milk")

    result = []
    for index, item in enumerate(shopping_list, start=1):
        result.append(f"{index}/ {item.capitalize()}")

    return result



shopping_list = ['tomatoes', 'pastas', 'milk', 'salt']
print(clean_list(shopping_list))
