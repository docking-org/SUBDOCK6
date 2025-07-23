#!/bin/bash
export EXPORT_DEST=$PWD/output
export DOCKFILES=$PWD/dock6files
export DOCKEXEC=/home/user/dock6/bin/dock6
export SHRTCACHE=/dev/shm
export LONGCACHE=/tmp
export SHRTCACHE_USE_ENV=
export USE_DB2_TGZ=true
export USE_DB2_TGZ_BATCH_SIZE=1
export USE_DB2=false
export USE_DB2_BATCH_SIZE=100
export USE_SLURM=False
export USE_SLURM_ARGS=--export=ALL
export USE_SGE=True
export USE_SGE_ARGS="-l s_rt=08:28:00 -l h_rt=08:30:00 -l mem_free=2G"
export USE_PARALLEL=false
export MAX_PARALLEL=-1
export QSUB_EXEC=qsub
export SBATCH_EXEC=sbatch
export PARALLEL_EXEC=parallel
export SUBMIT_WAIT_TIME=0

for i in  sdi/* ; do
       	export k=$(basename $i .in)
       	echo k $k
       	export INPUT_SOURCE=$PWD/$i
       	export EXPORT_DEST=$PWD/output/$k
	bash /home/user/SUBDOCK/subdock6.bash
done