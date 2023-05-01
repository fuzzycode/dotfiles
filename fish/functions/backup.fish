#!/usr/bin/env fish

# Copies the given file but give it a .bak extension
function backup --argument filename --description "Copy given file and append .bak to the name"
    cp $filename $filename.bak
end
