CLASS zcl_lab_67_eagm_package_a DEFINITION INHERITING FROM zcl_lab_66_eagm_travel
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS:
      transport_oneway REDEFINITION,
      day_one REDEFINITION,
      day_two REDEFINITION,
      day_three REDEFINITION,
      transport_return REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_67_eagm_package_a IMPLEMENTATION.

  METHOD transport_oneway.
    io_out->write( 'Transport Oneway Package A' ).
  ENDMETHOD.

  METHOD day_one.
    io_out->write( 'Day One Package A' ).
  ENDMETHOD.

  METHOD day_two.
    io_out->write( 'Day Two Package A' ).
  ENDMETHOD.

  METHOD day_three.
    io_out->write( 'Day Three Package A' ).
  ENDMETHOD.

  METHOD transport_return.
    io_out->write( 'Transport Return Package A' ).
  ENDMETHOD.

ENDCLASS.
