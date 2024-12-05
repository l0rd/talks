$ kubectl debug-cde $pod \
  --image $img \
  --copy-to $new_pod \
  --share-processes \
  --git-repository $url
