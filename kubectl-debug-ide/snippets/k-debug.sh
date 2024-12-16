$ kubectl debug $pod \
  --image $img \
  --copy-to $new_pod \
  --share-processes \
  -it -- bash
