################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp \
../src/tcp_client.cpp 

OBJS += \
./src/main.o \
./src/tcp_client.o 

CPP_DEPS += \
./src/main.d \
./src/tcp_client.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	arm-linux-gnueabihf-g++ -I/home/OpenCVArm/opencv/platforms/linux/build_hardfp/install/include/ -I/usr/arm-linux-gnueabihf/include/c++/4.6.3 -I/home/CurlArm/curl/include/ -O0 -g -Wall -c -fmessage-length=0 -v -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


