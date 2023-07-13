#!/bin/bash

# File names
file_names=(
    "0-hello_world"
    "1-confused_smiley"
    "100-empty_casks"
    "101-gifs"
    "102-acrostic"
    "103-the_biggest_fan"
    "11-directories"
    "12-newest_files"
    "13-unique"
    "14-findthatword"
    "15-countthatword"
    "16-whatsnext"
    "17-hidethisword"
    "18-letteronly"
    "19-AZ"
    "2-hellofile"
    "20-hiago"
    "21-reverse"
    "22-users_and_homes"
    "3-twofiles"
    "4-lastlines"
    "5-firstlines"
    "6-third_line"
    "7-file"
    "8-cwd_state"
    "9-duplicate_last_line"
)

# Create and configure files
for file_name in "${file_names[@]}"; do
    echo '#!/bin/bash' > "$file_name"      # Write the shebang as the first line
    echo '# Add your content here' >> "$file_name"   # Write your desired content on the second line
    chmod +x "$file_name"                  # Make the file executable
done
