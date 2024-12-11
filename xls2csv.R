library(readxl)

excel_file <- "test.xlsx"
sheet_names <- excel_sheets(excel_file)
timestamp <- format(Sys.time(), "%Y%m%d_%H%M%S")

for (sheet in sheet_names) {
  data <- read_excel(excel_file, sheet = sheet)
  csv_file <- paste0("csv/", sheet, ".csv")#  "_", timestamp, ".csv")
  write.csv(data, file = csv_file, row.names = FALSE)
}

