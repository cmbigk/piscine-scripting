def clean_list(shopping_list):
    # Empty list → return empty
    if not shopping_list:
        return []

    # Add milk if missing (before formatting)
    if "milk" not in shopping_list:
        shopping_list.append("milk")

    # Clean + format each item
    result = []
    for index, item in enumerate(shopping_list, start=1):
        cleaned = item.strip().capitalize()
        result.append(f"{index}/ {cleaned}")

    return result
