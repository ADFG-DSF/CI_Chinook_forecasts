# Cook Inlet Chinook salmon forecasts

Annual Chinook salmon forecasts for Cook Inlet streams (Currently Kenai River Chinook but planning to add Deshka and Anchor Rivers)

The working directory for this repository is located at S:\\RTS\\Reimer\\CI_Chinook_forecasts. File types .html and .docx and in the gitignore and can be found in this directory although they should also be recreatable for the rmd files in this repository.

The file/folder structure for this analysis is as follows:

-   season_XXXX/:

    -   data/: Brood tables used to create the forecast for each season.. These will typically be named "brood_STOCK\_(XXXX - 1) where stock is the name of the stock and the year is one less than the folder name (reflecting that the upcoming years forecast relies on brood tables current through the prior year.

    -   markdown/: Markdown, Quarto or R files with the analysis for each stock. Also contains .html or .docx outputs for each stock.

-   forecast error.csv: Historic forecast errors for each stock for use in estimating prediction intervals.
