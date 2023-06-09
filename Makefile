.PHONY: fmt
fmt:
	@printf "\n"
	prettier --write README.md
	$(MAKEFILE_SCRIPT_PATH)/fmt-python.sh
	@printf "\n"

.PHONY: install
install:
	trash venv
	virtualenv venv
	venv/bin/pip install --upgrade pip
	venv/bin/pip install -r requirements.txt
	venv/bin/pip list
