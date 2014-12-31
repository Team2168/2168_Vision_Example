################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/src/main.cpp \
../src/src/tcp_client.cpp \
../src/src/test.cpp \
../src/src/testCurl.cpp 

OBJS += \
./src/src/main.o \
./src/src/tcp_client.o \
./src/src/test.o \
./src/src/testCurl.o 

CPP_DEPS += \
./src/src/main.d \
./src/src/tcp_client.d \
./src/src/test.d \
./src/src/testCurl.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	arm-linux-gnueabihf-g++ -I/home/OpenCVArm/opencv/platforms/linux/build_hardfp/install/include/ -I/usr/arm-linux-gnueabihf/include/c++/4.6.3 -I/home/CurlArm/curl/include/ -O2 -g -Wall -c -fmessage-length=0 -v -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


