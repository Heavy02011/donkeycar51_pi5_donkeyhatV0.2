# donkeycar51_pi5_donkeyhatV0.2
this repo documents the installation of DonkeyCar 5.1 on a Raspberry 5 with a donkyhat V0.2 

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
- [ ] VScode
    ```
    sudo apt update
    sudo apt install code
    ```
- [x] set `DRIVE_TRAIN_TYPE = "PWM_STEERING_THROTTLE"`
      ```
      PWM_STEERING_THROTTLE = {
      "PWM_STEERING_PIN": "PCA9685.1:3C.1",   # PWM output pin for steering servo
      "PWM_STEERING_SCALE": 1.0,              # used to compensate for PWM frequency differents from 60hz; NOT for adjusting steering range
      "PWM_STEERING_INVERTED": False,         # True if hardware requires an inverted PWM pulse
      "PWM_THROTTLE_PIN": "PCA9685.1:3C.0",   # PWM output pin for ESC
      "PWM_THROTTLE_SCALE": 1.0,              # used to compensate for PWM frequence differences from 60hz; NOT for increasing/limiting speed
      "PWM_THROTTLE_INVERTED": False,         # True if hardware requires an inverted PWM pulse
      "STEERING_LEFT_PWM": 460,               #pwm value for full left steering
      "STEERING_RIGHT_PWM": 290,              #pwm value for full right steering
      "THROTTLE_FORWARD_PWM": 500,            #pwm value for max forward throttle
      "THROTTLE_STOPPED_PWM": 370,            #pwm value for no movement
      "THROTTLE_REVERSE_PWM": 220,            #pwm value for max reverse throttle
      }
      ```
