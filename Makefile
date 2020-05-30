githooks:
	# Tells git to use the provided .githooks folder in your repo's root
	# as where the githooks are stored
	git config core.hooksPath .githooks
	# Give execution privileges to the pre-push script
	chmod +x .githooks/pre-push