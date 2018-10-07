## Build

First setting you `PUREC_DIR` on `Makefile`.

```bash
bower install
make
```

## BUG

```bash
sed -i "s/b\\$'\\$/b$$$/g" .purec-work/main/Control.Monad.List.Trans.c
```
