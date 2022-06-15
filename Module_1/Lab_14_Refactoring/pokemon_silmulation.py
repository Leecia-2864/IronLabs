#!/usr/bin/env python
# coding: utf-8

# In[8]:


#Here we import random because we need to use it for randomize some choices
import random
import time
import numpy as np
import sys

#Creating our 3 different pokemon with a list of attack and the damage value 
Charizard = {'Flamethrower' : 25, 'Fly' : 20, 'Blast Burn' : 22, 'Fire Punch' : 16}
Blastoise = {'Water Gun' : 16, 'Bubblebeam' : 20, 'Hydro Pump' : 22, 'Surf' : 25}
Venusaur = {'Vine Wip' : 19, 'Razor Leaf' : 24, 'Earthquake' : 28, 'Frenzy Plant' : 22}
pokemons = [Charizard,Blastoise,Venusaur]

#Creating variables that will be used in the code
user_hp = 100
computer_hp = 100
user_list = []
computer_list = []

#First user input : the choice of the pokemon
choice = int(input(delay_print("For Charizard press 1, For Blastoise press 2, For Venusaur press 3 ")))
if choice == 1:
    user_pokemon = Charizard
elif choice == 2:
    user_pokemon = Blastoise
else:
    user_pokemon = Venusaur

#Computer pokemon randomly selected    
computer_pokemon = random.choice(pokemons)



#Creating list of user's / computer's pokemon attack in order to acces the value in the dictionary later
for i in user_pokemon.keys():
    user_list.append(i)

attack1 = user_list[0]
attack2 = user_list[1]
attack3 = user_list[2]
attack4 = user_list[3]
    
    
for i in computer_pokemon.keys():
    computer_list.append(i)
#Creating 2 "battle" function to reduce user or computer hp by the amount of damage of the attack the pokemon used    
def battle_computer(x,c):
    computer_turn_attack = random.choice(c)
    computer_turn_attack_value = computer_pokemon.get(computer_turn_attack)
    z = x - computer_turn_attack_value
    return z

# Delay printing
# Here i added a code which print one character at a time

def delay_print(s):
    # print one character at a time
    for c in s:
        sys.stdout.write(c)
        sys.stdout.flush()
        time.sleep(0.05)
        


def user_battle(x,c):
    turn_input = int(input(delay_print(f"\n For {attack1} press 1, for {attack2} press 2, for {attack3} press 3,for {attack4} press 4")))
    time.sleep(1)
    if turn_input == 1:
        turn_attack = c[0]
    elif turn_input == 2:
        turn_attack = c[1]
    elif turn_input == 3:
        turn_attack = c[2]
    elif turn_input == 4:
        turn_attack = c[3]
        
    turn_attack_value = user_pokemon.get(turn_attack)
    z = x - turn_attack_value
    return z


#Function to keep track of user and computer hp (to improve user experience)
def end_of_turn(x,y):
    delay_print(f"\n Your current hp is:{x}\n")
    delay_print(f"\n Computer current hp is:{y}\n")
    delay_print(f"\n Play Again")
    return



#Creating a random counter in order to know who will play first
counter = random.randint(1,4)


while user_hp > 0 and computer_hp > 0:
    if counter%2 == 0:
        computer_hp = user_battle(computer_hp,user_list)
        end_of_turn(user_hp,computer_hp)
    else:
        user_hp = battle_computer(user_hp,computer_list)
        end_of_turn(user_hp,computer_hp)
    counter += 1

#Display of the last message according to issue of the battle    
if user_hp > 0:
     delay_print("You WIN")
else:
    delay_print("You LOOSE")


# In[ ]:




