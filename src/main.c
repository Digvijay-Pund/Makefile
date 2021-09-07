#include<stdio.h>
#include "led.h"
#include "relay.h"

int main(){
	led_on();
	printf("\n");
	relay_on();
	printf("\n");
	led_off();
	printf("\n");
	relay_off();
	return 0;
}
