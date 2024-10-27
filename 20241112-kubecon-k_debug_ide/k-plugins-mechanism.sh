#!/usr/bin/env bash

# A plugin is a standalone executable file,
# whose name begins with `kubectl-`
echo "#!/usr/bin/env bash" > ./kubectl-hello
echo "echo Hallo Wien" >> ./kubectl-hello

# Make sure that the file
# is executable.
chmod +x ./kubectl-hello

# To install a plugin, 
# move its executable file 
# to anywhere on the PATH.
mv ./kubectl-hello ~/.bin/

