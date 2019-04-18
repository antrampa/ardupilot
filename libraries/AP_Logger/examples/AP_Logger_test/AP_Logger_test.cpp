/*
 * Example of AP_Logger library.
 * originally based on code by Jordi MuÒoz and Jose Julio
 */

#include <AP_HAL/AP_HAL.h>
#include <AP_Logger/AP_Logger.h>
#include <GCS_MAVLink/GCS_Dummy.h>
#include <stdio.h>

const AP_HAL::HAL& hal = AP_HAL::get_HAL();

#define LOG_TEST_MSG 1
struct PACKED log_Test {
    LOG_PACKET_HEADER;
    uint16_t v1, v2, v3, v4;
    int32_t  l1, l2;
};

static const struct LogStructure log_structure[] = {
    LOG_COMMON_STRUCTURES,
    { LOG_TEST_MSG, sizeof(log_Test),       
      "TEST",
      "HHHHii",
      "V1,V2,V3,V4,L1,L2",
      "------",
      "------"
    }
};

#define NUM_PACKETS 500

static uint16_t log_num;

class AP_LoggerTest {
public:
    void setup();
    void loop();

private:

    AP_Int32 log_bitmask;
    AP_Logger logger{log_bitmask};

};

static AP_LoggerTest loggertest;

void AP_LoggerTest::setup(void)
{
    hal.console->printf("Logger Log Test 1.0\n");

    log_bitmask = (uint32_t)-1;
    logger.Init(log_structure, ARRAY_SIZE(log_structure));
    logger.set_vehicle_armed(true);
    logger.Write_Message("AP_Logger Test");

    // Test
    hal.scheduler->delay(20);

    // We start to write some info (sequentialy) starting from page 1
    // This is similar to what we will do...
    log_num = logger.find_last_log();
    hal.console->printf("Using log number %u\n", log_num);
    hal.console->printf("Writing to flash... wait...\n");

    uint32_t total_micros = 0;
    uint16_t i;

    for (i = 0; i < NUM_PACKETS; i++) {
        uint32_t start = AP_HAL::micros();
        // note that we use g++ style initialisers to make larger
        // structures easier to follow        
        struct log_Test pkt = {};
        logger.WriteBlock(&pkt, sizeof(pkt));
        total_micros += AP_HAL::micros() - start;
        hal.scheduler->delay(20);
    }

    hal.console->printf("Average write time %.1f usec/byte\n", 
                       (double)total_micros/((double)i*sizeof(struct log_Test)));

#if CONFIG_HAL_BOARD == HAL_BOARD_SITL || CONFIG_HAL_BOARD == HAL_BOARD_LINUX
    logger.flush();
#endif

    hal.scheduler->delay(100);
}

void AP_LoggerTest::loop(void)
{
    hal.console->printf("\nTest complete.\n");
    hal.scheduler->delay(20000);
}

/*
  compatibility with old pde style build
 */
void setup(void);
void loop(void);

void setup()
{
    loggertest.setup();
}

void loop()
{
    loggertest.loop();
}

const struct AP_Param::GroupInfo        GCS_MAVLINK::var_info[] = {
    AP_GROUPEND
};
GCS_Dummy _gcs;

AP_HAL_MAIN();
