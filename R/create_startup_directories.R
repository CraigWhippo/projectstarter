#' Create New Directories
#'


create_directory_structure <- function() {
  # Use the current working directory as the root
  root_path <- getwd()

  # Define the directory structure
  directories <- c("data/raw_data",
                   "data/processed_data",
                   "data/intermediate_data",
                   "data/metadata",
                   "code/functions",
                   "code/scripts",
                   "code/quatro",
                   "output/figures",
                   "output/tables",
                   "output/manuscripts")

  # Create directories
  for (dir in directories) {
    dir.create(file.path(root_path, dir), recursive = TRUE)
  }

  # Verify directory structure
  print(list.files(root_path, recursive = TRUE))
}



