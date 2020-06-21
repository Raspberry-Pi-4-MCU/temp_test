#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <stdlib.h>

float temp_get()
{
 int fd = open("/sys/class/thermal/thermal_zone0/temp", O_RDONLY);
 uint8_t raspi_temp[20];
 read(fd, &raspi_temp, 20);
 return ((float)atoi(raspi_temp)/1000.0);
}
