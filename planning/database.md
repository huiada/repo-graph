## Database 

We will start with postgres. It is SQL, a query language we are all familiar with. It'll help us get into the nitty gritty of through (join) tables and many to many relationships. We may ultimately decide to move to a graph database. However, that will take research as to which database to choose and how to use it.

## Tables

My proposed table set up is as follows.

### Main Tables

1. **People**: this table will hold all the people that use or submit data to the system.
2. **Datasets**: all the datasets will be entered into this table.
3. **Fields**: all the fields that a dataset can contain will go in this table.
4. **Interactions**: this will be a reference table for interaction types a person can have with a datatset.

### Join Tables or Through Tables

These tables are required to resolve the many-to-many relationships that will occur throughout the system. 

1. **dataset-fields**: this will join datasets with the fields they have
2. **dataset-interactions**: this will join poeple and how they interact with a dataset

### Schematically 

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/cc084745-c040-4646-9d3c-5e12e85548f5" id="FabnC.u7I136"></iframe></div>