# https://makersportal.com/blog/2019/11/11/raspberry-pi-python-accelerometer-gyroscope-magnetometer

```
(env) rainer@donkeypi5:~ $ sudo i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:                         -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
30: -- -- -- -- -- -- -- -- -- -- -- -- 3c -- -- -- 
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- 68 -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- --    
```

The AK8963 is only directly accessable when the mpu-9250 is in i2c passthrough mode. Page 24 of the datasheet (end of paragraph at very top of page). [link](https://www.reddit.com/r/embedded/comments/kurlke/i2cdetect_not_detecting_ak8963_sensor_on_mpu9250/?rdt=45508)


# links
- [x] https://github.com/makerportal/mpu92-calibration.git failed
- [ ] https://mryslab.github.io/pymata_rh/mpu9250/
- [ ] https://github.com/wallarug/CircuitPython_MPU9250
