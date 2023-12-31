#!/bin/bash

#SBATCH --job-name=image_analysis
#SBATCH --output=result-%J.out
#SBATCH --error=result-%J.err
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=4GB  # Increased memory allocation
#SBATCH --partition=interactive

# Usage: ./run_image_analysis.sh <image_file>

# Absolute path to Python script
PYTHON_SCRIPT="./quantitative_analysis.py"

# Directory containing the image – update this to your directory
IMAGE_DIR="./example_data"

# Image file passed as an argument
IMAGE_FILE="$1"

# Check if an image file was provided
if [ -z "$IMAGE_FILE" ]; then
    echo "No image file provided."
    echo "Usage: ./run_image_analysis.sh <image_file>"
    exit 1
fi

# Check if the Python script exists
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "Python script not found at $PYTHON_SCRIPT"
    exit 1
fi

# Running the Python script with the provided image file
python "$PYTHON_SCRIPT" "$IMAGE_DIR" "$IMAGE_FILE"
