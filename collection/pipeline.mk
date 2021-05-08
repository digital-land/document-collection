DOCUMENT_DATASET=$(DATASET_DIR)document.csv
DOCUMENT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)document/0d7abf3cec0f75fc60329d5ddd18f8bd73d964b0ac468c525e7f621b90b3f5db.csv\
    $(TRANSFORMED_DIR)document/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2.csv

$(TRANSFORMED_DIR)document/0d7abf3cec0f75fc60329d5ddd18f8bd73d964b0ac468c525e7f621b90b3f5db.csv: collection/resource/0d7abf3cec0f75fc60329d5ddd18f8bd73d964b0ac468c525e7f621b90b3f5db
	$(run-pipeline)

$(TRANSFORMED_DIR)document/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2.csv: collection/resource/6cbca87f1b04fc5732996ace762fb6def1ce856f1dbe441a3f4195ef4aaa5ee2
	$(run-pipeline)

$(DOCUMENT_DATASET): $(DOCUMENT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DOCUMENT_TRANSFORMED_FILES)

dataset:: $(DOCUMENT_DATASET)
