PHONY_TARGETS :=
PHONY_TARGETS += install-pip
PHONY_TARGETS += notebook
PHONY_TARGETS += clean-pip

.PHONY: $(PHONY_TARGETS)

PYTHON_PACKAGES :=
PYTHON_PACKAGES += jupyter

install-pip:
	pip install -–upgrade $(PYTHON_PACKAGES)

notebook:
	jupyter notebook

clean-pip:
	pip uninstall -y $(PYTHON_PACKAGES)
