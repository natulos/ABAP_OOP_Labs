CLASS zcl_lab_05_eagm_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      check_FLIGHT IMPORTING VALUE(iv_carrier_id)    TYPE /dmo/carrier_id
                             VALUE(iv_connection_id) TYPE /dmo/connection_id
                   RETURNING VALUE(rv_exists)        TYPE abap_boolean.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_05_EAGM_FLIGHT IMPLEMENTATION.


  METHOD check_flight.

    SELECT SINGLE carrier_id
        FROM /dmo/flight
        WHERE carrier_id    = @iv_carrier_id
          AND connection_id = @iv_connection_id
         INTO @DATA(vresult).

    IF sy-subrc = 0.
      rv_exists = abap_true.
    ELSE.
      rv_exists = abap_false.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
