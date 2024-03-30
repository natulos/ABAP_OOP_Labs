CLASS zcl_lab_15_eagm_flight_price DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        mt_flights TYPE TABLE OF /dmo/flight.

    METHODS:
      add_price IMPORTING iv_add_price TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_15_EAGM_FLIGHT_PRICE IMPLEMENTATION.


  METHOD add_price.
    APPEND INITIAL LINE TO me->mt_flights ASSIGNING FIELD-SYMBOL(<lfs_flights>).
    <lfs_flights> = iv_add_price.
  ENDMETHOD.
ENDCLASS.
