@echo off
setlocal

REM Root folder path
set "ROOT=F:\Req_SK\Mega-git\Power_Portfolio\MotionCapture_Hybrid_IMU_IR"

REM Create main project folder
mkdir "%ROOT%"

REM Helper to create folder and notes.txt
set "FOLDERS="
set "FOLDERS=%FOLDERS% 0_Market_Research\Competitor_Analysis"
set "FOLDERS=%FOLDERS% 0_Market_Research\Product_Costing"
set "FOLDERS=%FOLDERS% 0_Market_Research\Technology_Trends"
set "FOLDERS=%FOLDERS% 0_Market_Research\Potential_Users_Survey"
set "FOLDERS=%FOLDERS% 0_Market_Research\Reference_Papers"

set "FOLDERS=%FOLDERS% 1_Project_Planning\Timeline_Gantt_Charts"
set "FOLDERS=%FOLDERS% 1_Project_Planning\Requirements_Spec"
set "FOLDERS=%FOLDERS% 1_Project_Planning\Budget_Estimates"
set "FOLDERS=%FOLDERS% 1_Project_Planning\Risk_Analysis"

set "FOLDERS=%FOLDERS% 2_System_Architecture\Block_Diagrams"
set "FOLDERS=%FOLDERS% 2_System_Architecture\Signal_Flow_Charts"
set "FOLDERS=%FOLDERS% 2_System_Architecture\SensorFusion_Model"

set "FOLDERS=%FOLDERS% 3_Hardware_Design\Schematics"
set "FOLDERS=%FOLDERS% 3_Hardware_Design\PCB_Designs"
set "FOLDERS=%FOLDERS% 3_Hardware_Design\3D_Models_Mounts"
set "FOLDERS=%FOLDERS% 3_Hardware_Design\Components_Datasheets"
set "FOLDERS=%FOLDERS% 3_Hardware_Design\Assembly_Guide"

set "FOLDERS=%FOLDERS% 4_Software_Development\Firmware_ESP32_IMU"
set "FOLDERS=%FOLDERS% 4_Software_Development\VisionTracking_OpenCV"
set "FOLDERS=%FOLDERS% 4_Software_Development\SensorFusion_Algorithms"
set "FOLDERS=%FOLDERS% 4_Software_Development\DataStreaming_MQTT"
set "FOLDERS=%FOLDERS% 4_Software_Development\UI_Interface"

set "FOLDERS=%FOLDERS% 5_Testing_and_Validation\Test_Protocols"
set "FOLDERS=%FOLDERS% 5_Testing_and_Validation\Calibration_Procedures"
set "FOLDERS=%FOLDERS% 5_Testing_and_Validation\Latency_Accuracy_Logs"
set "FOLDERS=%FOLDERS% 5_Testing_and_Validation\Validation_Videos"
set "FOLDERS=%FOLDERS% 5_Testing_and_Validation\Performance_Reports"

set "FOLDERS=%FOLDERS% 6_Results_and_Documentation\Final_Report"
set "FOLDERS=%FOLDERS% 6_Results_and_Documentation\Presentations"
set "FOLDERS=%FOLDERS% 6_Results_and_Documentation\Diagrams_PNG_SVG"
set "FOLDERS=%FOLDERS% 6_Results_and_Documentation\Exported_Data"
set "FOLDERS=%FOLDERS% 6_Results_and_Documentation\Video_Demos"

set "FOLDERS=%FOLDERS% 7_Papers_and_Publications\Drafts"
set "FOLDERS=%FOLDERS% 7_Papers_and_Publications\Submission_PDFs"
set "FOLDERS=%FOLDERS% 7_Papers_and_Publications\Figures_TeX"

REM Loop to create folders and notes.txt
for %%F in (%FOLDERS%) do (
    mkdir "%ROOT%\%%F"
    echo Notes for %%F > "%ROOT%\%%F\notes.txt"
)

REM Add root README.md
echo # Motion Capture Hybrid IMU+IR Project > "%ROOT%\README.md"

echo.
echo Folder structure with notes.txt created successfully at:
echo %ROOT%
pause

