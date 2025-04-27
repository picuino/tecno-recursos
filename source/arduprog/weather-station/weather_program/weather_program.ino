/*
  INCLUDES
*/
#include <LowPower.h>
#include <SD.h>
#include <DS3231.h>
#include <Wire.h>


/*
  PIN DEFINITION
*/
const int _SPI_CS_PIN = 10;

const int VDD_PERIPHERAL_PIN = 2;
const int VDD_RTC_PIN = 3;

enum {
  VDD_PERIPHERAL_ON,
  VDD_PERIPHERAL_OFF,
};

DS3231 myRTC;
bool century = false;
bool h12Flag;
bool pmFlag;

File myFile;
#define WEATHER_FILE_NAME "WEATHER.CSV"


/*
  CLASS DEFINITION
*/
#define STR_BUFF_SIZE            0x50

class STR_BUFF {
  public:
    char buff[STR_BUFF_SIZE];
    char buff_ptr;
    STR_BUFF();
    void begin(void);
    void write_char(char c);
    void write_dec(uint8_t b);
    void write_end(void);
};

STR_BUFF str_buff;

/*
  SETUP ROUTINE (START PROGRAM)
*/
void setup() {
  pinMode(VDD_PERIPHERAL_PIN, OUTPUT);
  digitalWrite(VDD_PERIPHERAL_PIN, VDD_PERIPHERAL_ON);

  pinMode(VDD_RTC_PIN, OUTPUT);
  digitalWrite(VDD_RTC_PIN, HIGH);
  
  
  Serial.begin(9600);
  Serial.println(F("\nInitializing..."));

	// Start the I2C interface
	Wire.begin();
}

  
/*
  MAIN PROGRAM LOOP
*/
void loop() {

  str_buff.begin();
  str_buff.write_dec(myRTC.getYear());
  str_buff.write_char('/');
  str_buff.write_dec(myRTC.getMonth(century));
  str_buff.write_char('/');
  str_buff.write_dec(myRTC.getDate());
  str_buff.write_char(',');
  str_buff.write_dec(myRTC.getHour(h12Flag, pmFlag));
  str_buff.write_char(':');
  str_buff.write_dec(myRTC.getMinute());
  str_buff.write_char(':');
  str_buff.write_dec(myRTC.getSecond());
  str_buff.write_char(',');

  str_buff.write_char('\n');
  str_buff.write_end();
  Serial.print(str_buff.buff);

  delay(100);
}


void sd_write(char *buff) {
  if (!SD.begin(_SPI_CS_PIN)) {
    Serial.println(F("SD card failed!"));
    while (1);
  }
  Serial.println(F("SD card initialized."));

  myFile = SD.open(WEATHER_FILE_NAME, FILE_WRITE);

  myFile.write(buff);  
  myFile.close();
}


void power_down(int seconds) {
  digitalWrite(VDD_PERIPHERAL_PIN, VDD_PERIPHERAL_OFF);
  seconds >>= 3;
  for (; seconds > 0; seconds--) {
    LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
  }
  digitalWrite(VDD_PERIPHERAL_PIN, VDD_PERIPHERAL_ON);
}


STR_BUFF::STR_BUFF() {
  begin();
}

void STR_BUFF::begin(void) {
  buff_ptr = 0;
  buff[0] = 0;
}

void STR_BUFF::write_char(char c) {
  buff[buff_ptr++] = c;
}

void STR_BUFF::write_dec(uint8_t b) {
  buff[buff_ptr++] = (b/10) + '0'; 
  buff[buff_ptr++] = (b%10) + '0';
}

void STR_BUFF::write_end(void) {
  buff[buff_ptr] = 0;
}
