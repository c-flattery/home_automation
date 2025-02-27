import os
import shutil
# This script removes directories containing a specific string in their names
basepath = r"V:\Path\To\Your\Directory"  # Update this to your base path

string = "DesiredStringHere"  # Update this to the string you want to search for

# Iterate through each subdirectory in the base path
for subdir in os.listdir(basepath):
    subdir_path = os.path.join(basepath, subdir)
    if os.path.isdir(subdir_path):
        for project in os.listdir(subdir_path):
            if string in project:
                shutil.rmtree(subdir_path)
                print(os.path.join(subdir_path, project))  # Comment out if you don't want the print statement
