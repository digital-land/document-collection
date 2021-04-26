DOCUMENT_DATASET=$(DATASET_DIR)document.csv
DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)document/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2.csv

$(TRANSFORMED_DIR)document/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2.csv: collection/resource/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2
	$(run-pipeline)

$(DOCUMENT_DATASET): $(DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DOCUMENT_DATASET)
