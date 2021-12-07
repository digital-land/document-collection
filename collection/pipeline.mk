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


DOCUMENT_TYPE_DATASET=$(DATASET_DIR)document-type.csv
DOCUMENT_TYPE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)document-type/30f3cd5f3bf8f384cea1497b6ad07da317f16fe20a1b7e506ae02c479982997d.csv

$(TRANSFORMED_DIR)document-type/30f3cd5f3bf8f384cea1497b6ad07da317f16fe20a1b7e506ae02c479982997d.csv: collection/resource/30f3cd5f3bf8f384cea1497b6ad07da317f16fe20a1b7e506ae02c479982997d
	$(run-pipeline)

$(DOCUMENT_TYPE_DATASET): $(DOCUMENT_TYPE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DOCUMENT_TYPE_TRANSFORMED_FILES)

dataset:: $(DOCUMENT_TYPE_DATASET)
