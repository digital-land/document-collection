DOCUMENT_DATASET=$(DATASET_DIR)document.csv
DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)document/7eb4ad2c1f97f0e3a107a2cda99abfe23e016669adf8aaae2596ea6af3da0103.csv

$(TRANSFORMED_DIR)document/7eb4ad2c1f97f0e3a107a2cda99abfe23e016669adf8aaae2596ea6af3da0103.csv: collection/resource/7eb4ad2c1f97f0e3a107a2cda99abfe23e016669adf8aaae2596ea6af3da0103
	$(run-pipeline)

$(DOCUMENT_DATASET): $(DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DOCUMENT_DATASET)
