# openwrt-packages
My openwrt package repository

## How to use
1. Add opkg packages key:
```sh
wget -O mohammadv184-public.key https://openwrt.mohammad-abbasi.me/public.key
opkg-key add mohammadv184-public.key
```

2. Add the repository to your `/etc/opkg/customfeeds.conf`:
```sh
echo "src/gz mohammadv184_packages https://openwrt.mohammad-abbasi.me/packages/$(. /etc/openwrt_release ; echo $DISTRIB_ARCH)" >> /etc/opkg/customfeeds.conf
```

3. Update opkg:
```sh
opkg update
```
and then you can install packages from this repository.


## Security

If you discover any security-related issues, please email mohammad.v184@gmail.com instead of using the issue tracker.
