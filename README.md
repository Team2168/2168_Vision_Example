2168_Vision_Example
===================


Attached is a compiled version of the OpenCV 2.4.10 libraries, which we patched to support the particular camera functions of the MS HD 3000.

The patch exposes certain controls to modify the camera image settings. The patch also expands the videoCapture contstructor to accept framesize and fps so the user can specify those paramters and have the camera set accordingly on instantiation. All settings are done at the driver hardware level using V4L2 api.

The patch is already compiled into the attached libraries, but if you would like to see what we modified, our changes to OpenCV are public here: https://github.com/KHEngineering/OpenCV_For_FRC_RoboRio/commit/aebc1d9261da2a44bdbcbac93398d48b211dafba

I have also included an example written in C++ which uses OpenCV to perform last years vision target. The example itself is very simple using only basic filters in OpenCV, (but it is exactly what we used throughout the 2014 competition season). I have modified the program to select command line arguments which will allow it to capture images from a IP axis camera, webcam, or a file. 


The source and executable are included. To run the program all you need to do is install OpenCV as per the previous instructions, and then transfer the executable over and run it. Some examples on how to run it are

./2168_Vision -c 10.21.68.90 -v -t  // this will run and capture frames from a axis camera at IP address 10.21.68.90, it will also display the processed image (because of the visualize flag -v, and will output the time it takes to process each frame because of the timing flag -t)

./2168_Vision -u  -v -t  // this will run can capture frames from the usb camera at /dev/video0

.2168_Vision -f /home/image.jpg //will process a static image

you can use the -help flag to see all other flags supported. 

This program is multi-threaded, the frame capture runs in one thread, while the image processing runs in another. Shared memory is used between the two and read/write access is controlled via mutex lock.

The source is here: The OpenCV libraraies, include files, and other required libraries are included in the project itself, so all you need to do it makesure you have the cross-compiler set up, and it should compile without a hitch.

Please let me know if there are any questions. I am releasing this under GNU, but if WPI would like it to be under another license, I have no problem changing it. 

-----------------------

For anyone else wanting to use this

 ### To: Install on Rio
 
1. transfer to the lib_OpenCV folder to /usr/local/lib (such that you have /usr/local/lib/lib_OpenCV/) Note: it contains symlinks so use rsync to transfer or just FTP
2. on the rio create a textfile `/etc/ld.so.conf.d/opencv.conf` that contains the line `/usr/local/lib/lib_OpenCV
3. Save and exit the file then run `ldconfig` in the rio terminal
4. you may get some lines that say xxx file is not a symlink, thats ok
5. done

### To use the libraries in C++
1. Copy OpenCV parent folder to your development computer
2. Add OpenCV/includes to your C++ includes path
3. Add OpenCV/lib_OpenCV to your lib path
4. Add which ever libraries you use to your linker (opencv_highgui opencv_core opencv_imgproc pthread)
5. Those libraries will probably suit 95% of people.
6. add #include <opencv2/opencv.hpp> and using namespace cv;
7. Done

> The project here has the includes and arm libraries required as local directories, so if you use this eclipse project, and have the cross compiler set up, it should find all required files automatically. The build path is already set to search the corresponding directories within the project

### To use in Java
1. add  OpenCV/lib_OpenCV/java/opencv-2410.jar to your java project
2. import org.opencv.core.Core; and any other libraries
3. NOTE: I NEVER TESTED JAVA, SO PLEASE REPORT

Please let me know if there are any questions
