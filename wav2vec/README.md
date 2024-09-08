## Finetune wav2vec on Gilbreth

### Login and setting the environment:

1. login to Gilbreth:

- `ssh username@gilbreth.rcac.purdue.edu`
- password followed by ,push [NO SPACES]

2. create a directory named `wav2vec` for example, and upload all the contents of this repo in it. You may use `sftp` as follows:

- open a new terminal and use `sftp myusername@gilbreth.rcac.purdue.edu`, then transfer these files to Gilbreth as follows: `put sourcefile somedir/destinationfile`
- an example: `put /Users/Tom/Desktop/run.sh /home/Tom/wav2vec`

3. setup your conda environment

- In your home directory, load `anaconda` as follows `module load anaconda`
- create a new env as follows:

```sh
conda create -n MY_ENV python=3.9 ipython
conda activate MY_ENV
```
- After creating the `env`, run the requirements.txt file to install packages as follows `pip install -r requirements.txt`

- Now everything is ready to run your job.

### Running your job:

- Before running the job, it is important to export `HF_HOME` to `/scratch/gilbreth/USERNAME` or anyother directory because `gilbreth home` is limited as follows:

- `export HF_HOME="/scratch/gilbreth/USERNAME"`

1. For debugging, you may run: `sbatch --nodes=1 --gpus-per-node=1 -A debug build.sub `

2. For running using your group, you may use: `sbatch -t 20:30:00 --nodes=1 --gpus-per-node=1 -A NAME_OF_GROUP build.sub `

### Some important commands:

- `myqouta`
- `squeue -u USERNAME`
- `scontrol show job ID`


- NOTE: you will need to go over the `run.sh` file to include `token`, and your `scratch` folder.
