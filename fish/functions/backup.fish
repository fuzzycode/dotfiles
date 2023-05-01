#!/usr/bin/env fish

# Copies the given file but give it a .bak extension
function backup --argument filename
    cp $filename $filename.bak
end
