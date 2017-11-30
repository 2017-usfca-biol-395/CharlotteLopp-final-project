# Charlotte Lopp
# clopp@dons.usfca.edu
# November 21, 2017

# Script written to run through the following analysis workflow: starting with downloading of fastq files, through QC checks, trimming, and 
# finally BLASTing them against a local copy of GenBank

export PATH=$PATH:/Users/charlottelopp/Desktop/CharlotteLopp-final-project/sratoolkit.2.8.2-1-mac64/bin

# Code to download the list of files in the run table of the raw data directory
for SRA_number in $(cut -f 8 data/metadata/SraRunTable.txt | tail -n +2)
do
    fastq-dump -v $SRA_number -O data/raw_data
done
echo "Downloaded the list of files in the run table of the raw data directory"
