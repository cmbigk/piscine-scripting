def do_punishment(first_part, second_part, nb_lines):
    first = first_part.strip()
    second = second_part.strip()
    sentence = first + " " + second + ".\n"
    return sentence * nb_lines



print(do_punishment('   The first half   ', '   and the second  ', 4), end='')
print(do_punishment('Will not', 'show', 0), end='')
print(do_punishment('', '', 3), end='')
