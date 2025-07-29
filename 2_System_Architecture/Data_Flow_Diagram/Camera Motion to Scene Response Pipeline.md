\## Camera Tracking to Scene Display Pipeline



This section describes the data path and system interaction from physical camera movement to virtual scene response on LED walls or chroma backgrounds.



\### Purpose

To ensure real-time scene synchronization with the physical camera position using the tracking crown (IMU + IR system).



\### Data Flow Overview



1\. \*\*Camera Movement\*\*

   - The physical camera is moved by the operator during filming.



2\. \*\*Motion Detection (Crown)\*\*

   - The crown senses motion using:

     - IMU (e.g., MPU9250 or BNO085)

     - IR LED optical markers tracked by external cameras



3\. \*\*Data Fusion (MCU)\*\*

   - An onboard microcontroller fuses the IMU and IR tracking data.

   - Output: Camera position and orientation in 6DoF.



4\. \*\*Data Transmission\*\*

   - Protocol: OSC over Ethernet or Wi-Fi

   - Sent to a receiver on the studio PC



5\. \*\*Receiver Software (e.g., Unreal Engine)\*\*

   - Receives tracking data

   - Adjusts virtual scene to match camera movement



6\. \*\*Scene Display Output\*\*

   - Updated visuals shown on LED wall or composited into chroma key background

