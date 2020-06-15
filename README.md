# latex-table-using-kable-and-python
Illustrating the LaTeX table generation process using R package kable and python

## Final table

[This](final_result.pdf) is the final table that we will generate.

[This](code/simulation_result.csv) is the original data that we will work with.


## Steps

You can go through the steps using files in [code/](code/). I recommend to first download the entire repository to your own computer and then try out the steps.

1. Run through [generate_table.R](code/generate_table.R). This code loads the [simulation_result.csv](code/simulation_result.csv) (some fake data that we will make table with) and outputs a txt file (table_tmp.txt) using R package "kableExtra". Note that you will also need to have R packages reshape and knitr installed in order to successfully run through the code.

2. Execute [replace_text_table.py](code/replace_text_table.py). This replaces some texts in table_tmp.txt in order to make it "LaTeX-ready". This will create a txt file table_final.txt.

3. Copy-paste everything in table_final.txt to [latex_file_to_show_table.tex](code/latex_file_to_show_table.tex) and generate a pdf using your LaTeX software. This pdf should look the same as [final_result.pdf](final_result.pdf).


## Note:

Folder "code with all intermediate files" contains all the files generated during the table generation process.
