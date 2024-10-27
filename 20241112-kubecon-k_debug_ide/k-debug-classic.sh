k debug -it $pod \
    --image $img \
    --share-processes \ 
    --copy-to=$new_pod
