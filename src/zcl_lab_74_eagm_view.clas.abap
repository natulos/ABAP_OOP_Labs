CLASS zcl_lab_74_eagm_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      display_fligths IMPORTING it_flights TYPE /dmo/t_flight
                                io_out     TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_74_eagm_view IMPLEMENTATION.
  METHOD display_fligths.
    io_out->write( it_flights ).
  ENDMETHOD.

ENDCLASS.
