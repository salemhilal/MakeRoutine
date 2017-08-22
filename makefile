leave: bathroom bedroom
	$(call task,"Ok get out of here")

##
## These are contexts - there's nothing to do here, but
##	they represent logical groupings of work, usually by
##	room of my apartment.
##

bathroom: teeth contacts deodorant
	$(call context, "hygene")

bedroom: clothes backpack
	$(call context, "bedroom")


##
## These are actual tasks and their dependencies
##

clothes: deodorant pick-clothes
	$(call task, "Put on your bike clothes")

coffee:
	$(call task,"Make some coffee and read the news")

teeth: coffee
	$(call task, "Brush your teeth")

contacts: 
	$(call task, "Put in contacts")

deodorant: 
	$(call task, "Put on deodorant")

pick-clothes:
	$(call task, "Picking out work and bike clothes")

plants:
	$(call task, "Checking plants for water")

backpack: pick-clothes
	$(call task, "Pack your backpack (work clothes, jacket, laptop)")

##
## These are helper functions
##

# Given a task name, displays the task and waits for user input
# 	before continuing.
# 	i.e. $(call task, "Brush your teeth");
define task
	@read -p $(1)
endef

# Given a context name, displays the context once all of its 
# 	dependences have been resolved
define context
	@echo "\n====================\nFinished $(1) tasks\n====================\n"
endef
