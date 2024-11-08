Basic README
markdown
# Rename Files Script

## Description

`rename_files.sh` is a simple Bash script that renames all `.txt` files in a specified directory by appending a timestamp to their filenames. This script is useful for organizing and timestamping text files.

## Usage

1. **Set the Directory**:
   - Open the script and specify the directory containing the `.txt` files you want to rename. Edit the `DIRECTORY` variable in the script:

   ```bash
   DIRECTORY="/path/to/your/directory"
Make the Script Executable:

Ensure the script has executable permissions:

bash
chmod +x rename_files.sh
Run the Script:

Execute the script:

bash
./rename_files.sh
Example
Suppose you have the following files in the /home/user/Documents directory:

file1.txt
file2.txt
file3.txt
After running the script, the files will be renamed to:

20241108_151745_file1.txt
20241108_151745_file2.txt
20241108_151745_file3.txt
Notes
Ensure you have write permissions for the directory.

The script uses the current date and time for the timestamp, formatted as YYYYMMDD_HHMMSS.

Learning and Modification
Feel free to modify the script to suit your needs. Here are some ideas:

Change the file types processed by the script (e.g., .jpg, .png).

Add logging to record the names of the renamed files.

Implement error handling to manage files that cannot be renamed.

Happy scripting!

This README should provide a clear and concise guide for anyone using or modifying the rename_files.sh script.