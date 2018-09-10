/**************************************************************************//**
 * @file
 * @brief   Header file for the USBXpress firmware library.  Includes function
 *          prototypes, type definitions, and function return value macro
 *          definitions.
 * @author  Silicon Laboratories
 * @version 4.0.0 (DM: July 14, 2014)
 *
 *******************************************************************************
 * @section License
 * (C) Copyright 2014 Silicon Labs Inc,
 * http://developer.silabs.com/legal/version/v11/Silicon_Labs_Software_License_Agreement.txt
 *******************************************************************************
 *
 * @addtogroup usbxpress USBXpress
 * @{
 *
 * @brief
 *   USBXpress interface library.
 *
 * ## Introduction
 *
 *   This module provides a firmware interface which communicates with the Silicon Labs
 *   USBXpress driver and allows firmware to interact with host programs via
 *   the USBXpress dll.
 *
 * ### Memory Usage
 *
 *  The USBXpress library consumes aproximitaly 5K of flash, 100 bytes of XDATA and 60 bytes of IRAM.5
 *
 * ## Theory of operation:
 *
 *   The USBxpress library interfaces with the Silicon Labs USBXpress drivers. The interface
 *   consists of two data transmission pipes (rx and tx) which are used to send and receive data.

 *  ### Data
 *
 *   Data reception and transmission is handled with Block_Read() and Block_Write(). Upon
 *   Completion of a sent or received packet the user is called back with RX_COMPLETE or TX_COMPLETE.
 *
 *  # Additional Resources
 *
 *   * [USBXpress AppNote - AN169](http://www.silabs.com/Support%20Documents/TechnicalDocs/AN169.pdf)
 *   * [Development drivers](http://www.silabs.com/products/mcu/Pages/USBXpress.aspx)
 *   * [Driver Customization - AN220](http://www.silabs.com/Support%20Documents/TechnicalDocs/AN200.pdf)
 *
 *   This driver wraps the efm8_usb Library and both can not be used at the same time.
 *
 * ## Re-entrance (non-thread-safe)
 *
 *   @warn
 *     The USBXPress library is NOT reentrant.
 *
 *   For example if the main loop calls into the library and that call is interrupted
 *   by code which also calls into the library an error may occur. The user must ensure that
 *   the library is accessed from only one context at a time.
 *
 *   The most common way of handling this is to disable USB interrupts when calling
 *   into the library from the main loop. If other ISR's call into the
 *   library those interrupts must be disabled as well.
 *
 * ## Interrupts
 *
 *   This library handles USB0 interrupts and will enable USB0 interrupts at
 *   it's  discretion. It will NOT enable global interrupts and the user is
 *   responsible for enabling global interrupts.
 *
 *****************************************************************************/

#ifndef  _USBXPRESS_H_
#define  _USBXPRESS_H_

#include <stdint.h>
#include <stdbool.h>

/**************************************************************************//**
 * Define user API call-back function with:
 * USBXpress_API_Callback( <call-back name here> ){}
 *
 * @warn
 *   The call-back routine is called by the USBXpress library from
 * within the USB interrupt.  It should run as quickly as possible.
 *
 * If timing becomes an issue, consider using the call-back routine to set
 * user-defined flags that may be serviced in the project's main loop.
 * Additionally note that the call-back routine will be called for every call-back
 * source, whether or not the user checks for that call-back source.  All code
 * except variable declarations and the Get_call-back_Source() call should check
 * for a pertinent call-back source (see the Status Flags section for all call-back sources).
 *
 *****************************************************************************/
#define USBXpress_API_CALLBACK(name) void name (void)


/***************************************************************************//**
 *  @addtogroup usbx_status USBXpress Status Flags
 *  @{
 *
 *  These enums are returned by Get_Callback_Source(). The return value is
 *  a mask and may contain the logical OR of any combination of status flags.
 *  Each flags maps to a call-back event.
 *
 ******************************************************************************/
// Basic Get_Callback_Source() return value bit masks (32 bits)
// Note: More than one bit can be set at the same time.
#define USB_RESET                0x00000001     //! USB Reset Interrupt has occurred
#define TX_COMPLETE              0x00000002     //!< Transmit Complete Interrupt has occurred
#define RX_COMPLETE              0x00000004     //!< Receive Complete Interrupt has occurred
#define DEVICE_OPEN              0x00000010     //!< Device Instance Opened on host side
#define DEVICE_CLOSE             0x00000020     //!< Device Instance Closed on host side
#define DEV_CONFIGURED           0x00000040     //!< Device has entered configured state
#define DEV_SUSPEND              0x00000080     //!< USB suspend signaling present on bus
/**  @} (end usbx_status Status Flags) */


/***************************************************************************//**
 *  @addtogroup usbx_status USB Status Flags
 *  @{
 *
 *  These enums are returned by Block_Read() and Block_Write.
 *
 ******************************************************************************/
#define USBX_STATUS_OK                   0
#define USBX_STATUS_EP_BUSY             -2
#define USBX_STATUS_ILLEGAL             -4
#define USBX_STATUS_EP_STALLED          -5
#define USBX_STATUS_DEVICE_UNCONFIGURED -9
/**  @} (end usbx_status Status Flags) */


/***************************************************************************//**
 *  @brief
 *    USBXpress initialization function parameter typedef
 *
 *  User should instantiate and pass by reference to USB_Init.
 *
 *****************************************************************************/
typedef struct USBXpress_Init_TypeDef
{
   uint16_t VendorID;            /**< 16-bit Vendor ID to be returned to the
                                  *   host's Operating System during USB
                                  *   enumeration. Set to 0x10C4 to use the
                                  *   default Silicon Laboratories Vendor ID.
                                  */

   uint16_t ProductID;           /**< 16-bit Product ID to be returned to the
                                  *   host's Operating System during USB
                                  *   enumeration. Set to 0xEA61 to associate
                                  *   with the default VCP driver.
                                  */

   uint8_t* ManufacturerString;  /**< Pointer to a character string. See AN571
                                  *    Appendix B for formatting. NULL pointer
                                  *    will be treated as a valid address.
                                  */

   uint8_t* ProductString;       /**< Pointer to a character string. See AN571
                                  *   Appendix B for formatting. NULL pointer
                                  *   will be treated as a valid address.
                                  */

   uint8_t* SerialString;        /**< Pointer to a character string. See
                                  *   Appendix B for formatting. NULL pointer
                                  *   will be treated as a valid address.
                                  */

   uint8_t MaxPower;             /**< Specifies how much bus current a device
                                  *   requires.  Set to one half the number of
                                  *   milliamperes required. The maximum
                                  *   allowed current is 500 milliamperes, and
                                  *   hence any value above 0xFA will be
                                  *   automatically set to 0xFA. Example: Set
                                  *   to 0x32 to request 100 mA.
                                  */

   uint8_t PowerAttribute;       /**< Set bit 6 to 1 if the device is self-
                                  *   powered and to 0 if it is bus-powered.
                                  *   Set bit 5 to 1 if the device supports the
                                  *   remote wakeup feature. Bits 0 through 4
                                  *   must be 0 and bit 7 must be 1. Example:
                                  *   Set to 0x80 to specify a bus-powered
                                  *   device that does not support remote
                                  *   wakeup.
                                  */

   uint16_t ReleaseBCD;          /**< The device's release number in BCD
                                  *   (binary-coded decimal) format. In BCD,
                                  *   the upper byte represents the integer,
                                  *   the next four bits are tenths, and the
                                  *   final four bits are hundredths.  Example:
                                  *   2.13 is denoted by 0x0213.
                                  */

   uint8_t useFifo;              /**< Whether to use the USB FIFO space to
                                  *   store VCP variables or else store them in
                                  *   user xram.  The addresses of the
                                  *   variables are the same either way.  If
                                  *   the current device does not support the
                                  *   use of the USB FIFO space form variable
                                  *   storage, this option does nothing.
                                  */

} USBXpress_Init_TypeDef;


/***************************************************************************//**
 *  @addtogroup usbx_func Functions
 *  @{
 ******************************************************************************/


/**
 * @brief
 *   User API USB initialization function.
 *
 * @param p:
 *   Pointer to USBXpress_Init_Typedef structure.  Not modified by this routine.
 *
 * To minimize user xdata use, the user should pass initialization parameters
 * from code memory to the USB_Init function.
 *
 *****************************************************************************/
void USB_Init(USBXpress_Init_TypeDef* p) large;

/**************************************************************************//**
 * @brief
 *   User API function to send data to host.
 *
 * @param   block:
 *   Pointer to user's array where data to be transmitted is stored.
 * @param   numBytes:
 *   Number of bytes to send to host
 * @param[out]   count_ptr:
 *   Pointer to user's storage for number of bytes actually transmitted to the
 *   host.  This will be valid upon the subsequent TX_COMPLETE call-back.
 *
 * @return
 *   This function returns a status word. 0 indicates that the write was
 *   successfully started. Any other value indicates that the request was
 *   ignored. The most common reason is USBX_STATUS_EP_BUSY meaning that
 *   a write is already in progress.
 *
 *   Valid return codes are fond in @ref usbx_status
 *
 * A TX_COMPLETE callback will occur for each usb packet (64 bytes) in the block
 * write. For example if the user writes a block of 100 bytes TX_COMPLETE will
 * occur 2 times. Once with 64bytes sent and once with 100-64 = 36 bytes sent.
 *
 * This function utilizes the efm8_usb library's USBD_Write function,
 * which only prepares for a write.  The actual write will occur over time as the
 * host transmits data. The user API RX_COMPLETE call-back will be called as each
 * usb packet is received.
 *
 *****************************************************************************/
uint8_t Block_Write(uint8_t* block, uint16_t numBytes, uint16_t* count_ptr) large;

/**************************************************************************//**
 * @brief
 *   User API function to get data from host.
 *
 * @param   block:
 *   Pointer to user's array where received data will be stored.
 * @param   numBytes:
 *   Number of bytes to receive from host
 * @param[out]   count_ptr:
 *   Pointer to user's storage for number of bytes actually received from the
 *   host.  This will be valid upon the subsequent RX_COMPLETE call-back.
 *
 * @return
 *   This function returns a status word. 0 indicates that the read was
 *   Successfully started. Any other value indicates that the request was
 *   ignored. The most common reason is USBX_STATUS_EP_BUSY meaning that
 *   a Read is already in progress.
 *
 *   Valid return codes are fond in @ref usbx_status
 *
 * A RX_COMPLET call-back will occur for each usb packet (64 bytes) in the block
 * write. For example if the user reads a block of 100 bytes RX_COMPLETE will
 * occur 2 times. Once with 64bytes sent and once with 100-64 = 36 bytes sent.
 *
 * This function utilizes the efm8_usb library's USBD_Read function,
 * which only prepares for a read.  The actual read will occur over time as the
 * host transmits data. The user API RX_COMPLETE call-back will be called as each
 * usb packet is received.
 *
 *
 *****************************************************************************/
uint8_t Block_Read(uint8_t* block, uint16_t numBytes, uint16_t* count_ptr) large;

/**************************************************************************//**
 * @brief
 *   User API function to get the call-back source.
 *
 * Returns an 32-bit value indicating the reason(s) for the API call-back, and
 * clears the USB API call-back pending flag(s). This function should be called
 * at the beginning of the user's call-back service routine to determine which
 * event(s) has/have occurred.
 *
 * @return
 *   An unsigned 32-bit code indicating the reason(s) for the API
 *   interrupt. The code can indicate more than one type of interrupt at
 *   the same time. Valid flags are found in @ref usbx_status
 *****************************************************************************/
uint32_t Get_Callback_Source(void) large;

/**************************************************************************//**
 * @brief
 *   Enables user API call-backs
 *
 * @param   f:
 *   Pointer to user-defined call-back function.
 *
 * Enables USB interrupts and sets the API call-back function pointer to the
 * passed function which should be defined with USBXpress_API_CALLBACK.
 *
 *****************************************************************************/
void API_Callback_Enable(void (*f)(void)) large;

/**************************************************************************//**
 * @brief
 *   Inhibits user API call-backs and does NOT disable the USB interrupt.
 *
 *****************************************************************************/
void API_Callback_Disable(void) large;

/**************************************************************************//**
 * @brief
 *   Disables the USB interface.
 *
 *****************************************************************************/
void USB_Disable(void) large;

/**************************************************************************//**
 * @brief
 *   Suspends the USB interface.
 *
 *****************************************************************************/
void USB_Suspend(void) large;

/**************************************************************************//**
 * @brief
 *   Returns the USBXpress library version.
 *
 * @return Library version
 *
 * Library version is returned in binary-coded decimal format.
 *
 *****************************************************************************/
uint16_t USB_Get_Library_Version(void) large;



/**  @} (end usbx_func Functions) */

/**  @} (end addtogroup usbxpress USBXpress) */

#endif  /* _USBXPRESS_H_ */

