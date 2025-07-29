
# Real-Time Camera Tracker with IMU and IR Fusion

## Project Overview

This project develops a real-time camera tracking module that fuses data from an Inertial Measurement Unit (IMU) and an Infrared (IR) optical tracking system. The goal is to create a cost-effective and accurate tracking system for use in virtual production environments, such as LED walls or chroma studios, where precise camera position and orientation are critical for synchronizing rendered scenes.

## Use Case

- Motion tracking for professional film and broadcast studios
- Synchronization of camera movement with 3D environments in engines like Unreal Engine
- Enhanced tracking in occluded or difficult visual conditions using sensor fusion
- DIY or semi-commercial alternative to high-cost systems like Vicon Crown

## System Architecture

The tracking system consists of:

- Microcontroller (e.g., STM32 with Ethernet support)
- 9DoF IMU (e.g., ICM-20948, or ICM-45686 with QMC6309)
- IR LEDs for use with external IR camera tracking systems
- Communication via Ethernet/UDP or optionally USB or Wi-Fi
- Sensor fusion combining IMU data and IR position reference

The microcontroller collects IMU and timing data, optionally synchronizes with camera signals, and transmits the fused output to a host system for virtual rendering alignment.

## Key Features

- Modular hardware architecture
- Open sensor fusion logic (e.g., Kalman or VQF)
- Standardized communication (OSC or custom UDP)
- Support for Ethernet and future-proof interfaces
- Expandable to multi-tracker configurations

## Current Status

- Initial project plan and specification completed
- Market research and comparative analysis documented
- High-level system and block diagrams prepared
- Hardware component selection and early prototyping ongoing
- Fusion algorithm and communication layer under development

## Future Goals

- Finalize hardware PCB and enclosure
- Implement and optimize sensor fusion algorithms
- Develop synchronization with camera systems or timecode
- Validate with LED wall or green screen studio environment
- Publish open-source reference design and documentation

## Contributors

- Nader Yahia (Hardware and Firmware)
- [Add additional contributors here]




