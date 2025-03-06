
#!/bin/bash
find . -type f -size 0 -exec rm -f {} \;
echo " empty files have been deleted "
