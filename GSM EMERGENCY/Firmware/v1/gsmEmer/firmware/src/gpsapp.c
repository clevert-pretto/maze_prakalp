/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    gpsapp.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "gpsapp.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

GPSAPP_DATA gpsappData;
static uint8_t usartRWTxData[] = "Hello GPS\r\n";
static enum 
{
    USART_RW_INIT,
    USART_RW_WORKING,
    USART_RW_DONE,
} usartRWState;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


static void USART_Task (void)
{
    switch (usartRWState)
    {
        default:
        case USART_RW_INIT:
        {
            gpsappData.usartReadWriteTxIndex = 0;
            gpsappData.usartReadWriteRxIndex = 0;
            usartRWState = USART_RW_WORKING;
            break;
        }

        case USART_RW_WORKING:
        {
            if(gpsappData.usartReadWriteTxIndex < sizeof(usartRWTxData))
            {
                /* Transmit the bytes from the buffer */
                gpsappData.usartReadWriteTxIndex += 
                    DRV_USART_Write(gpsappData.gpshandleUSART0,
                    &usartRWTxData[gpsappData.usartReadWriteTxIndex],
                    sizeof(usartRWTxData) - gpsappData.usartReadWriteTxIndex);
            }

            if (gpsappData.usartReadWriteRxIndex < GPSAPP_DRV_USART_RW_RX_SIZE)
            {
                /* Read bytes into the buffer */
                gpsappData.usartReadWriteRxIndex += 
                    DRV_USART_Read(gpsappData.gpshandleUSART0,
                    &gpsappData.usartRWRxData[gpsappData.usartReadWriteRxIndex],
                    GPSAPP_DRV_USART_RW_RX_SIZE - gpsappData.usartReadWriteRxIndex);
            }

            /* have we finished? */
            if (gpsappData.usartReadWriteTxIndex == sizeof(usartRWTxData) && (gpsappData.usartReadWriteRxIndex ==  GPSAPP_DRV_USART_RW_RX_SIZE))
            {
                usartRWState = USART_RW_DONE;
            }
            break;
        }
        
        case USART_RW_DONE:
        {
            break;
        }
    }
}

/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void GPSAPP_Initialize ( void )

  Remarks:
    See prototype in gpsapp.h.
 */

void GPSAPP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    gpsappData.state = GPSAPP_STATE_INIT;

    gpsappData.gpshandleUSART0 = DRV_HANDLE_INVALID;

    /* initialize the USART state machine */
    usartRWState = USART_RW_INIT;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void GPSAPP_Tasks ( void )

  Remarks:
    See prototype in gpsapp.h.
 */

void GPSAPP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( gpsappData.state )
    {
        /* Application's initial state. */
        case GPSAPP_STATE_INIT:
        {
            bool appInitialized = true;
       
            if (gpsappData.gpshandleUSART0 == DRV_HANDLE_INVALID)
            {
                gpsappData.gpshandleUSART0 = DRV_USART_Open(GPSAPP_DRV_USART, DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
                appInitialized &= (DRV_HANDLE_INVALID != gpsappData.gpshandleUSART0);
            }

        
            if (appInitialized)
            {
            
                gpsappData.state = GPSAPP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case GPSAPP_STATE_SERVICE_TASKS:
        {
            USART_Task();
        
            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

 

/*******************************************************************************
 End of File
 */
