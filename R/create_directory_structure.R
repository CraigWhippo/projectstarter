#' Create Project Directories
#'
#' @return Create directories in the project working directory or root dirctory containin
#' @export
#'
#' @examples
#' create_directory_structure()
create_project_directory_structure <- function() {
  # Use the current working directory as the root
  root_path <- getwd()

  # Define the directory structure
  directories <- c(
    "02_data/02_raw",
    "02_data/03_temp",
    "02_data/04_output",
    "02_data/01_metadata",
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


#'
#' @return Create directories in the project working directory or root dirctory containin
#' @export
#'
#' @examples
#' create_directory_structure()
create_ec_directory_structure <- function() {
  # Use the current working directory as the root
  root_path <- getwd()

  # Define the directory structure
  directories <- c(
    "level_0/cf_data/h5",
    "level_0/cf_data/i2",
    "level_0/telemetry/h5",
    "level_0/Telmetry/i2",
    "level_0/baled_time_series/h5",
    "level_0/height",
    "level_0/eddypro_setup/h5",
    "level_0/eddypro_setup/i2",
    "level_0/scripts",
    "level_1/post_processing/h5",
    "level_1/post_processing/i2",
    "level_1/logbook/h5",
    "level_1/logbook/i2",
    "level_1/scripts",
    "level_2/quality_checking/h5",
    "level_2/quality_checking/i2",
    "level_2/ec_storage_flux/h5",
    "level_2/ec_storage_flux/i2",
    "level_2/gap_fi\ling_input/h5",
    "level_2/gap_filling_input/i2",
    "level_3/gap_filled/h5",
    "level_3/gap_filled/i2",
    "level_3/summary/h5",
    "level_3/summary/i2"
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

