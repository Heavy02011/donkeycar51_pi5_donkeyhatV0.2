# https://makersportal.com/blog/2019/11/11/raspberry-pi-python-accelerometer-gyroscope-magnetometer

pi5
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

jetson orin
```
(llama3local) rainer@ubuntu:~/dev/donkeycar51_pi5_donkeyhatV0.2/tests/mpu9250$ sudo i2cdetect -y -r 0
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
50: 50 -- -- -- -- -- -- 57 -- -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- --                         
(llama3local) rainer@ubuntu:~/dev/donkeycar51_pi5_donkeyhatV0.2/tests/mpu9250$ sudo i2cdetect -y -r 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- UU -- -- -- -- -- -- -- -- -- -- 
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
40: UU -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- -- 
```

The AK8963 is only directly accessable when the mpu-9250 is in i2c passthrough mode. Page 24 of the datasheet (end of paragraph at very top of page). [link](https://www.reddit.com/r/embedded/comments/kurlke/i2cdetect_not_detecting_ak8963_sensor_on_mpu9250/?rdt=45508)


# links
- [x] https://github.com/makerportal/mpu92-calibration.git failed
- [x] https://medium.com/@niru5/hands-on-with-rpi-and-mpu9250-part-3-232378fa6dbc failed
- [ ] https://medium.com/@fasateaniket5/motion-sensors-mpu-6050-and-mpu9250-e86467e9a237
- [ ] https://mryslab.github.io/pymata_rh/mpu9250/
- [ ] https://github.com/wallarug/CircuitPython_MPU9250
