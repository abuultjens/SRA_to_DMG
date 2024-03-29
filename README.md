# SRA_to_DMG
Tool that uses the entrez-direct package to retrieve DMG IDs from SRR IDs or vice versa  

## Dependencies
entrez-direct

Can be installed through conda with:  
``conda install -c bioconda entrez-direct``  

## Usage
``sh SRA_to_DMG.sh [single column list of SRR IDs] [outfile.csv]``  

## Example [SRA_to_DMG]

```
cat SRR_list.csv  
SRR4249865  
SRR4249866  
SRR4249867  
SRR4249868  
SRR4249869
```

```sh SRA_to_DMG.sh SRR_list.csv SRA-DMG.csv``` 

```
cat SRA-DMG.csv
SRR4249865,DMG1600126
SRR4249866,DMG1600122
SRR4249867,DMG1600140
SRR4249868,DMG1600139
SRR4249869,DMG1600138
```

## Example [DMG_to_SRA]

```
cat DMG_list.csv  
DMG1600126
DMG1600122
DMG1600140
DMG1600139
DMG1600138
```

```sh DMG_to_SRA.sh DMG_list.csv DMG-SRA.csv``` 

```
cat DMG-SRA.csv
DMG1600126,SRR4249865
DMG1600122,SRR4249866
DMG1600140,SRR4249867
DMG1600139,SRR4249868
DMG1600138,SRR4249869
```


