CLASS zcl_lab_16_eagm_price_discount DEFINITION INHERITING FROM zcl_lab_15_eagm_flight_price
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_16_EAGM_PRICE_DISCOUNT IMPLEMENTATION.


  METHOD add_price.
    APPEND INITIAL LINE TO me->mt_flights ASSIGNING FIELD-SYMBOL(<lfs_flights>).
    <lfs_flights> = iv_add_price.

    "10% Discount
    <lfs_flights>-price = <lfs_flights>-price - ( ( <lfs_flights>-price * 10 ) / 100 ).
  ENDMETHOD.
ENDCLASS.
