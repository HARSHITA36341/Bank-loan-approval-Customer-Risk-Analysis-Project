# Bank Loan Approval & Customer Risk Analysis

Data analysis project on a bank loan dataset using Python, Pandas, Seaborn and MySQL, with a Tableau dashboard. It explores how loan approval status relates to applicant details such as credit (CIBIL) score and income.

## What I did
- Loaded the loan approval dataset and cleaned the column names
- Checked the data with `info()`, `describe()` and missing-value checks
- Counted approved vs rejected loans (`loan_status`)
- Compared the average CIBIL score for each loan status using `groupby`
- Created charts with Seaborn and Matplotlib: loan status count, CIBIL score by loan status (boxplot) and income distribution by loan status (histogram)
- Saved the cleaned data as `final_loan_data_cleaned.csv`
- Wrote SQL queries for the loan data in MySQL
- Built a Tableau dashboard from the cleaned data

## Tech Stack
Python, Pandas, NumPy, Matplotlib, Seaborn, MySQL, Tableau, Jupyter Notebook

## Files (inside the project folder)
- `new code bank py.ipynb` - Python analysis notebook
- `loan_approval_dataset.csv` - original dataset
- `final_loan_data_cleaned.csv` - cleaned dataset
- `new loan mysql query.sql` - MySQL queries
- `dashboard tableau bank loan.twb` - Tableau dashboard

## How to run
1. Install Python 3 and Jupyter Notebook, then run `pip install pandas numpy matplotlib seaborn`
2. Open `new code bank py.ipynb`
3. Change the CSV path in the first cell to the location of `loan_approval_dataset.csv` on your computer
4. Run the cells from top to bottom
