import numpy as np

my_list = [1,2,3,4,5,6,7,8,9]

to_array = np.array(my_list)
print(to_array)

print(np.zeros(10))

print(np.ones(10))

ones = np.ones(10)

print(ones * 4)

print(np.arange(2,100,2))

to_25 = np.arange(1,26)

by_5 = to_25.reshape(5,5)
print(by_5)

twelve = by_5[2,1]
print(twelve)

last_line = by_5[4]
print(last_line)

sub_matrix01 = by_5[:3, :3]

print(sub_matrix01)

sub_matrix02 = by_5[1:4, 1:]

print(sub_matrix02)

twenty_random = np.random.rand(20)
print(twenty_random)
print(twenty_random.max())
print(twenty_random.min())
print(twenty_random.dtype)


to_hundred = np.arange(1,101)
print(to_hundred[to_hundred>90])
print(to_hundred[to_hundred % 7 == 0])

to_one = np.linspace(0.25,1,40).reshape(5,8)
print(to_one)

my_list = np.arange(2,100)

def is_prime(number):
    for i in range(2,number):
        if number % i == 0:
            return False
    return True

vis_prime = np.vectorize(is_prime)

new = my_list[vis_prime(my_list)]

print(new)


