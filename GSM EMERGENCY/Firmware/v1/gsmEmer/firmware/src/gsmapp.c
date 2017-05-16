/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    gsmapp.c

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

#include "gsmapp.h"

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

GSMAPP_DATA gsmappData;
static uint8_t usartRWTxData[] = "Hello GSM\r\n";
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
            gsmappData.usartReadWriteTxIndex = 0;
            gsmappData.usartReadWriteRxIndex = 0;
            usartRWState = USART_RW_WORKING;
            break;
        }

        case USART_RW_WORKING:
        {
            if(gsmappData.usartReadWriteTxIndex < sizeof(usartRWTxData))
            {
                /* Transmit the bytes from the buffer */
                gsmappData.usartReadWriteTxIndex += 
                    DRV_USART_Write(gsmappData.gsmhandleUSART0,
                    &usartRWTxData[gsmappData.usartReadWriteTxIndex],
                    sizeof(usartRWTxData) - gsmappData.usartReadWriteTxIndex);
            }

            if (gsmappData.usartReadWriteRxIndex < GSMAPP_DRV_USART_RW_RX_SIZE)
            {
                /* Read bytes into the buffer */
                gsmappData.usartReadWriteRxIndex += 
                    DRV_USART_Read(gsmappData.gsmhandleUSART0,
                    &gsmappData.usartRWRxData[gsmappData.usartReadWriteRxIndex],
                    GSMAPP_DRV_USART_RW_RX_SIZE - gsmappData.usartReadWriteRxIndex);
            }

            /* have we finished? */
            if (gsmappData.usartReadWriteTxIndex == sizeof(usartRWTxData) && (gsmappData.usartReadWriteRxIndex ==  GSMAPP_DRV_USART_RW_RX_SIZE))
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
    void GSMAPP_Initialize ( void )

  Remarks:
    See prototype in gsmapp.h.
 */

void GSMAPP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    gsmappData.state = GSMAPP_STATE_INIT;

    gsmappData.gsmhandleUSART0 = DRV_HANDLE_INVALID;

    /* initialize the USART state machine */
    usartRWState = USART_RW_INIT;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void GSMAPP_Tasks ( void )

  Remarks:
    See prototype in gsmapp.h.
 */

void GSMAPP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( gsmappData.state )
    {
        /* Application's initial state. */
        case GSMAPP_STATE_INIT:
        {
            bool appInitialized = true;
       
            if (gsmappData.gsmhandleUSART0 == DRV_HANDLE_INVALID)
            {
                gsmappData.gsmhandleUSART0 = DRV_USART_Open(GSMAPP_DRV_USART, DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
                appInitialized &= (DRV_HANDLE_INVALID != gsmappData.gsmhandleUSART0);
            }

        
            if (appInitialized)
            {
            
                gsmappData.state = GSMAPP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case GSMAPP_STATE_SERVICE_TASKS:
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
