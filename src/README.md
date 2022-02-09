# Case Study: BQML Logistic Regression On Sample Data

## Set up
To kick start the process, navigate to the BigQuery UI
The model needs to have the following to run:

### A destination
- The user needs to specify a location where we are going to store the model. Think of this as how we store ADH queries once they arrive in BigQuery
- This starts with the CREATE MODEL statement, followed by ‘dataset_name.model_name’
- If the dataset isn’t already created, writing a new dataset_name will create it.

### A type
- The user needs to specific which type of model BigQuery should run
- This is an argument in the OPTIONS function
- Numerous arguments for the options function

### A label
- This is the value we are trying to predict
- This has to be binary, 1 or 0
- You can specify this column as “label” or specify the column name in the options statement

### Features
- These are our inputs -- what we are using to model the label
- This can be continuous, discrete, or categorical -- the model will automatically accounts for them
- Once we have the necessary columns and options to run the model we append our GA360 data to the from statement
- Note: BigQuery allows you to apply a wildcard operator to the table names, this allows us to pick the date range 

Then go ahead and run the query -- it should take a few minutes
