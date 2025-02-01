# Podman: The Next Generation Container Engine

![slide](slide.png)

To run the presentation:

```bash
presenterm ./slides.md
```

To allow snipped execution:

```bash
cat <<EOF >  ~/.config/presenterm/config.yaml
snippet:
  exec:
    enable: true
  exec_replace:
    enable: true
EOF
```

- [Presenterm documentaiton](https://mfontanini.github.io/presenterm/introduction.html)
- [Presenterm config](https://github.com/mfontanini/presenterm/blob/master/config.sample.yaml)
