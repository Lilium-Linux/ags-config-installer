#!/bin/bash

# Define colors for formatting
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BG_BLUE='\033[44m'
NC='\033[0m' # No Color

# Print big green text
echo -e "${BG_BLUE}${GREEN}"
echo "*************************************************"
echo "*          Git Clone and Overwrite Script       *"
echo "*************************************************"
echo -e "${NC}"

# Set the URL of the Git repository
repository_url="https://github.com/Lilium-Linux/ags.git"

# Set the name of the temporary directory
temp_directory="ags_temp_clone"

# Set the desired destination directory
desired_destination="$HOME/.config/ags"

# Step 0: Create the destination directory if it doesn't exist
echo -e "${BG_BLUE}${YELLOW}Step 0: Creating destination directory...${NC}"
mkdir -p "$desired_destination"
echo -e "${BG_BLUE}${GREEN}Step 0: Done${NC}"

# Step 1: Clone the repository into a temporary directory
echo -e "${BG_BLUE}${YELLOW}Step 1: Cloning the repository into a temporary directory...${NC}"
git clone "$repository_url" "$temp_directory"
echo -e "${BG_BLUE}${GREEN}Step 1: Done${NC}"

# Step 2: Copy or move the contents of the temporary directory to the desired destination
echo -e "${BG_BLUE}${YELLOW}Step 2: Copying files to the desired destination...${NC}"
cp -rf "$temp_directory"/* "$desired_destination"/
echo -e "${BG_BLUE}${GREEN}Step 2: Done${NC}"

# Remove the temporary directory
rm -rf "$temp_directory"
echo -e "${BG_BLUE}${GREEN}Temporary directory removed.${NC}"

echo -e "${BG_BLUE}${GREEN}"
echo "*************************************************"
echo "*                  Done                         *"
echo "*************************************************"
echo -e "${NC}"
