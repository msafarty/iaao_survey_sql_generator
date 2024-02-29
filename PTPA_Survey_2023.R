library(dplyr)
library(readxl)
library(stringr)
data <- readxl::read_xlsx('PTPA_Responses_2-27.xlsx') %>% data.frame()
#escape apostrophes that may be found in the Excel data; this will mess up SQL
data <- data.frame(lapply(data, function(x) {
  gsub("'","''",x)
}))
# data[is.na(data)] <- ''

#create SQL generation function based on data structure
generateSql <- function(dataset, qnum, colnum, category, subQ) {
  sqlText <- dataset 
  category2 <- ifelse(category == '' , 'NULL',category)
  subQ2 <- ifelse(subQ == '', 'NULL',subQ)
  # start at row 2 because row 1 doesnt represent a real response
  for (row in 2:nrow(sqlText)) {
    cat(paste0("(2, ", 1000+row, ", 2023, ",qnum, ", ", category2, ", ", 
               subQ2,", '", sqlText[row,colnum], "'),\n"))#, quote = F)
  }                
}

generateSqlMerge <- function(dataset, qnum, colnum, colnumTotal, category, subQ) {
  category2 <- ifelse(category == '' , 'NULL',category)
  subQ2 <- ifelse(subQ == '', 'NULL',subQ)
  colnumCounter <- colnumTotal - 1 # if we have 3 columns that we want to capture, we would set colnumTotal = 3 in function. We then would choose columns starting at colnum and ending at colnum+(colnumTotal-1). i.e., if columns #144-146 are trying to be merged, there are 3 total columns, and our column subsetting properly reflects [,144:146].
  # start at row 2 because row 1 doesnt represent a real response
  for (row in 2:nrow(dataset)) {
    # combinedResponse <- paste(as.character(dataset[row,colnum:colnum+colnumCounter]),collapse=",", sep = ",")
    values <- apply(dataset[row, colnum:(colnum + colnumCounter)], 1, function(x) ifelse(is.na(x), "", as.character(x)))
    combinedResponse <- paste(values, collapse = ",")
    # Replace consecutive commas with a single comma
    combinedResponse <- gsub(",{2,}", ",", combinedResponse)
    
    # Remove any leading or trailing commas
    combinedResponse <- gsub("^,|,$", "", combinedResponse)
    
    
    cat(paste0("(2, ", 1000+row, ", 2023, ",qnum, ", ", category2, ", ", 
               subQ2,", '", combinedResponse, "'),\n"))#, quote = F)
  }                
}

generateSqlMerge(data, 13, 142, 3, '', '')

#assign each unique jurisdicton a specific ID first, mutate a column to be that ID, reference that column wrt the response given so that we handle duplicates / or just delete the incorrect DUPES of primary response

# Open text file, write function output into it without R idiosyncrasies forcing us to use text replace
### had to add the multiple insert into statements to avoid sql server limit of 1000 inserts. also, one must manually remove the final comma in the last set of values before the next "insert into" statement. I think we may need to insert into SQL pre-tabularized data, or come up with something more elegant.
### NOTEPAD++ allows for replace over multiple lines, therefore can replace the phrase ",INSERT INTO" and remove the preceding commas for mass insert.
sink("insertResponsesDetailed2023.txt") 
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 1, 10, '', 1)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 1, 11, '', 2)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 1, 12, '', 3)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 1, 13, '', 4)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 2, 14, '', '')
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 3, 15, '', '')
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 4, 17, '', '')
cat('INSERT INTO dbo.responses_detail VALUES ') 
generateSql(data, 5, 18, '' , 1)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 5, 19, '' , 2)
cat('INSERT INTO dbo.responses_detail VALUES ')
generateSql(data, 5, 20, '' , 3)
sink()
