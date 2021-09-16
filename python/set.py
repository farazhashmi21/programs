# Python Set

class python_set:
	def __init__(self):
		print("Python Constructor")
	def for_loop_execution(self,loopvariable):
		get_loop_variable = loopvariable
		for loop in get_loop_variable:
			print(loop)
	def example(self):
		fruits = {"apple","banana","peach"}
		self.for_loop_execution(fruits)
		fruits_length = len(fruits)
		print("Fruits have length is " + str(fruits_length) + ".")
		fruits = {"apple",1, True,3j}
		print(fruits)
		print("Type of set: " + str(type(fruits)) + ".")
		apples = set(("Green Apple","Red Apple", "Yellow Apple"))
		self.for_loop_execution(apples)
		apples.add("Peach")
		self.for_loop_execution(apples)
		apples.update(fruits)
		print("Updated Result")
		self.for_loop_execution(apples)
		apples.discard("Peach")
		self.for_loop_execution(apples)
		print("Removed: " + str(apples.pop()))
		self.for_loop_execution(apples)
	def check_for_the_value(self, val, loopingval):
		get_val = val
		get_loopval = loopingval
		if get_val in get_loopval:
			print("Yes we have " + str(get_val) + ".")
		else:
			print("No sorry for that.")
	def marriage(self, set_one, set_two):
		get_set_one = set_one
		get_set_two = set_two
		marriage = get_set_one.union(get_set_two)
		self.for_loop_execution(marriage)
	def similarities(self, set_one, set_two):
		get_set_one = set_one
		get_set_two = set_two
		similiar = get_set_two.intersection(get_set_one)
		self.for_loop_execution(similiar)
	def difference(self):
		fruits = set(("Apple","Banana","Peach"))
		apples = set(("Apple","Cherry", "Peach"))
		its_different = fruits.symmetric_difference(apples)
		self.for_loop_execution(fruits)
		self.for_loop_execution(apples)
		self.for_loop_execution(its_different)
	def main_executer(self, execs):
		get_exec = execs
		get_exec.example()
		apples = set(("Green Apple","Red Apple", "Yellow Apple"))
		get_exec.check_for_the_value("Yellow Apple",apples)
		fruits = {"Apple","Banana","Peach"}
		apples = set(("Apple","Cherry", "Peach"))
		get_exec.marriage(fruits, apples)
		get_exec.similarities(fruits, apples)
		get_exec.difference()

ps = python_set()
ps.main_executer(ps)
