# Initial variable to track shopping status
shopping = 'y'

# List to track pie purchases
# Preconfigure pie purchases list as a counter
pie_purchases = [0,0,0,0,0,0,0,0,0,0,0]

# Pie List
pie_list = ["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun",
            "Blueberry", "Buko", "Burek", "Tamale", "Steak"]

# Display initial message
print("Welcome to the House of Pies! Here are our pies:")

# While we are still shopping...
while shopping == "y":
    
# Get index of the pie from the selected number
#for pie in pie_list:
#print(f'[{str(pie_list.index(pie))}] {pie}')
        
    # Show pie selection prompt
    print("---------------------------------------------------------------------")
    print("(1) Pecan, (2) Apple Crisp, (3) Bean, (4) Banoffee, " +
          " (5) Black Bun, (6) Blueberry, (7) Buko, (8) Burek, " +
          " (9) Tamale, (10) Steak ")

    pie_choice = int(input("Which would you like? ")) - 1
    print(pie_choice)
    

    
    # Add pie to the pie list by finding the matching index and adding one to its value
    # print(pie_choice)
    pie_purchases[pie_choice]+= 1
    # print(pie_purchases)

    print("------------------------------------------------------------------------")

    # Inform the customer of the pie purchase
    print("Great! We'll have that " + str(pie_list[pie_choice]) + " right out for you.")

    # Provide exit option
    
    # Prompt the user if they would like to make another purchase
    shopping = input("Would you like to make another purchase: (y)es or (n)o? ")

# Once the pie list is complete
print("------------------------------------------------------------------------")

# Count instances of each pie
print("You purchased: ")

# Loop through the full pie list

for i in range(len(pie_list)): 
    print(f"You purchased {pie_purchases[i]} {pie_list[i]}")

    # Gather the count of each pie in the pie list and print them alongside the pies
    # YOUR CODE HERE


