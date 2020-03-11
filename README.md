# ada-microbit
Programy na BBC micro::bit napisane w języku Ada.

## Klonowanie repozytorium

Aby sklonować należy użyć opcji **--recursive**:

```bash
git clone --recursive https://github.com/przemko/ada-microbit.git
```

## Kompilacja i uruchomianie przykładu

### Kompilacja

```bash
cd NAZWA_PRZYKŁADU
gprbuild -p
```

### Wgranie i uruchomienie przykładu

```bash
cd NAZWA_PRZYKŁADU
arm-eabi-objcopy -O binary obj/main obj/main.bin
pyocd-flashtool -a 0x00000000 obj/main.bin
```
