#!/usr/bin/env fish

function take -a path -d "Creates and cd's into a directory"
    mkdir -p $path
    cd $path
end
