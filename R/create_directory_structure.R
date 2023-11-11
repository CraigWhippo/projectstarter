#' Create Project Directories
#'
#' @return Create directories in the project working directory or root dirctory containin
#' @export
#'
#' @examples
#' create_directory_structure()
create_directory_structure <- function() {
  # Use the current working directory as the root
  root_path <- getwd()

  # Define the directory structure
  directories <- c(
    "02_data/02_raw",
    "02_data/03_temp",
    "02_data/04_output",
    "02_data/01_metadata",
    "02_data/01_metadata/gis",
    "01_code/01_functions",
    "01_code/01_scripts",
    "03_output/01_figures",
    "03_output/02_tables",
    "03_output/03_manuscripts"
  )

  # Create directories
  for (dir in directories) {
    dir.create(file.path(root_path, dir), recursive = TRUE)
  }

  # Verify directory structure
  print(list.files(root_path, recursive = TRUE))
}


# Example usage:
# create_directory_structure()


# Example usage:
# create_directory_structure()
