
"use strict";

let Infrared = require('./Infrared.js');
let Servo = require('./Servo.js');
let Ultrasonic = require('./Ultrasonic.js');
let DHT22 = require('./DHT22.js');
let Imu = require('./Imu.js');
let Battery = require('./Battery.js');
let Velocities = require('./Velocities.js');
let PID = require('./PID.js');

module.exports = {
  Infrared: Infrared,
  Servo: Servo,
  Ultrasonic: Ultrasonic,
  DHT22: DHT22,
  Imu: Imu,
  Battery: Battery,
  Velocities: Velocities,
  PID: PID,
};
