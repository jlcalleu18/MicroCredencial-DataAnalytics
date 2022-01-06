# Simple Calculator

def add(x, y): 
   return x + y
 
def subtract(x, y):
   return x - y
 
def multiply(x, y):
   return x * y
 
def divide(x, y):
   return x / y
 
# Take input from the user

while True:
  n = int(input(' 1. Add\n 2. Subtract \n 3. Multiply \n 4. Divide \n 0. exit \n '))
  if n !=0:
    num1= int(input('Enter the first number: '))
    num2= int(input('Enter the second number: '))
    if n ==1:
      print(f'{num1} + {num2} = {add(num1,num2)}\n')
    elif n == 2:
      print(f'{num1} + {num2} = {subtract(num1,num2)}\n')
    elif n == 3:
      print(f'{num1} + {num2} = {multiply(num1,num2)}\n')
    elif n == 4:
      print(f'{num1} + {num2} = {divide(num1,num2)}\n')
    else:
      print('Invalid input')
  else:
    print('Thank you')
    break