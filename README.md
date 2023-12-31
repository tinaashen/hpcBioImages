BioImaging Test Workflow
=================================
Running BioImaging Analysis on Milton

## What is everything

- myenv.yml: This file consists of the environment settings and installing all required dependencies iin thhe environment
- run_image_analysis.sh: This file allow users to submit the batch scripts to SLURM
- example_data: This file consists of 2 publicly sourced images that are in .tiff format
- batch_processing_solution.py: Take an image input and process it to produce quantitative measurements results
- image_analysis_tutorial.ipynb: Jupyter notebook that can help determine thresholds and make sure everything is working as intended
- example_cells_output: This file consists of the images when the data gets preprocessed
- ipynb_images: This file consists of images that are exhibited in the jupyter notebook


## First things first

This tool is for analysing microscopy images that have been extracted to TIF. If the images are in other format, try converting file format or use another workflow.

### Getting started
If you have not cloned this .git repository to your local directory
```
git clone https://github.com/tinaashen/hpcBioImages
cd hpcBioImages
```
### Setting up environment
If you have not used conda on milton before, install it with
```
module load miniconda3
conda env create -f myenv.yaml
conda activate myenv 
```
If you have previously used conda on milton, and have an environment set up, you will face an error as such:
![image](https://github.com/tinaashen/hpcBioImages/assets/106832655/49417d17-5f12-4a86-a056-661678d2da7b)

If so, reactivate the environment if you are running the same program again.
```
module load miniconda3
conda activate myenv
```
### Compiling and submitting bash script
```
chmod +x run_image_analysis.sh
sbatch ./run_image_analysis.sh example_cells_1.tif
ls 
cat <job_id>.out
```
