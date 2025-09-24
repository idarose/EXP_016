#!/bin/bash -l

for ((n=234; n<=282; n++)); do
    # Print the current iteration
    echo "Processing iteration i $n..."

    # Source MakeFolder to create the directory
    source MakeFolder $n

    # Generate the target directory name
    dir_name=$(printf "run_%04d" $n)  # Pad to 4 digits (e.g., run_0234)
    echo "Target directory: $dir_name"

    
    cd $dir_name

    # Run gen_conf.py
    if [ -f "./gen_conf.py" ]; then
        ./gen_conf.py
    else
        echo "Error: gen_conf.py not found. Skipping."
        cd ..
        continue
    fi

    # Run femul
    # export DYLD_LIBRARY_PATH=/Users/idapro/Desktop/Academics/Codes/Installations/AGATA/gammaSoftware/lib:$DYLD_LIBRARY_PATH
    # echo "DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH"
    # femul Topology_FromPSAToTreePRISMA.conf
    export DYLD_LIBRARY_PATH=/Users/idapro/Desktop/Academics/Codes/Installations/ROOTC17/root-6.36.02-installation/lib:$DYLD_LIBRARY_PATH
    /Users/idapro/Desktop/Academics/Codes/Installations/AGATA/gammaSoftware/bin/femul Topology_FromPSAToTreePRISMA.conf


    # Return to the parent directory
    cd ..
done
