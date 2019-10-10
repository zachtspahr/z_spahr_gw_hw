print("Welcome to the House of Pies! Here are our pies:" )
pie_list = [
    "Nothing",
    "Pecan",
    "Apple Crisp",
    "Bean",
    "Banoffee",
    "Black Bun",
    "Blueberry",
    "Buko",
    "Burek",
    "Tamale",
    "Steak"
]
allowance= 1
pie_cart = []
for pie in pie_list:
    print(f'[{str(pie_list.index(pie))}] {pie}')
answer="yes"
while answer== "yes":

    selected = input("Which type of pie do you want? Choose by the number on the list. ")
    pie_cart.append(pie_list[int(selected)])
    print(f"Great! We'll have that {pie_cart} right out for you.")
    answer = input("Would you like to make another selection? ('yes' or 'no')? ")
print("I brought home with me...")
for pie in pie_cart:
    print(pie)
#Last thing I need to do here is figure out how to display the number of pies chosen for each pie?

    
    