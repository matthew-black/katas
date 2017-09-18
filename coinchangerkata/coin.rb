COINS = {
  25 => "Q",
  10 => "D",
  5 => "N",
  1 => "P"
}

# Do it using TDD:
#   Only thing that changed is that when transitioning from passing
#   just the penny tests, instead of making an if condition to handle
#   nickels, it made sense to just add a 5 => 'N' bit to the COINS
#   constant and use a more DRY way to make the 'N' get appended to my
#   change string.
#   Also, I'm not sure if this was a result of going slower with TDD, but
#   this solution ends up not needing to use a variable to store the value
#   of the next coin to be added to the change string. I feel like that was
#   probably more of a byproduct of already having made two working solutions
#   before doing the TDD thing.
def convert(cents, change = "")
  return change if cents == 0

  change << COINS[COINS.keys.find { |coin| coin <= cents}]

  cents -= COINS.key(change[-1])

  convert(cents, change)
end


# Previous non-TDD solutions:

# Initial Solution:
# def convert(this_makes_cents, change = "")
#   return change if this_makes_cents == 0
#   if this_makes_cents >= 25
#     change << COINS[25]
#     this_makes_cents -= 25
#     convert(this_makes_cents, change)
#   elsif
#     this_makes_cents >= 10
#     change << COINS[10]
#     this_makes_cents -= 10
#     convert(this_makes_cents, change)
#   elsif
#     this_makes_cents >= 5
#     change << COINS[5]
#     this_makes_cents -= 5
#     convert(this_makes_cents, change)
#   else
#     this_makes_cents >= 1
#     change << COINS[1]
#     this_makes_cents -= 1
#     convert(this_makes_cents, change)
#   end
# end

# Refactor above to be more DRY:
# def convert(cents, change = "")
#   return change if cents == 0

#   add_to_change = COINS.keys.find { |coin| coin <= cents}

#   change << COINS[add_to_change]
#   cents -= add_to_change

#   convert(cents, change)
# end
