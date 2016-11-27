PHONY_TARGETS =
PHONY_TARGETS += install
PHONY_TARGETS += clean
.PHONY: $(PHONY_TARGETS)

PIP.PACKAGES =
PIP.PACKAGES += pandas        # data structures & analysis
PIP.PACKAGES += matplotlib    # 2d plotting
PIP.PACKAGES += numpy         # base n-dimensional arrays
PIP.PACKAGES += scipy         # scientific computing
PIP.PACKAGES += scikit-learn  # machine learning

install:
	pip install --upgrade $(PIP.PACKAGES)

clean:
	pip uninstall -y $$(pip freeze)
