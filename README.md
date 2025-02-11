# donkeycar51_pi5_donkeyhatV0.2
this repo documents the installation of DonkeyCar 5.1 on a Raspberry 5 with a donkyhat V0.2 on a *Goolsky WLtoys XKS 144010 RC* car following the [donkeycar docs](http://docs.donkeycar.com)

## [Building car](building_car.md)
![](media/IMG_0061.jpeg)

## Donkeyhat V0.2, thx to [Chris](https://github.com/zlite)
![](./media/donkeyhatV0.2.jpg)

[code](./rp2040/)

## [installation](http://docs.donkeycar.com)
- [x] SD-card Bookworm 5.2, March 2024
- [x] pip install donkeycar[pi]
- [x] install missing dependencies for *donkey ui*
    ```
    pip install kivy
    pip install plotly
    pip install albumentations
    ```
- [x] testing camera `libcamera-still -o test.jpg`
- [x] VScode
    ```
    sudo apt update
    sudo apt install code
    ```
- [ ] set `DRIVE_TRAIN_TYPE = "MM1"`
```
sudo minicom -b 115200 -o -D /dev/ttyAMA0
```
- [x] [wifi hotspot](https://medium.com/@jones.0bj3/wireless-networking-for-the-jetson-nano-and-rpi-504868dd1b3a)
```
sudo -i -u rainer nmcli dev wifi hotspot ifname wlan1 ssid rbnano1-drivingnetwork password XXXXXXXX
```

## [schema](https://github.com/Heavy02011/donkeyhat/tree/main/schema-plots)

## [calibration](https://github.com/Heavy02011/donkeyhat/blob/main/calibration/readme.md)
)