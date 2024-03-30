CLASS zcl_lab_58_eagm_date_analyzer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      analyze_date IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                   RAISING   zcx_lab_56_eagm_no_date ,
      analyze_format IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                     RAISING   zcx_lab_57_eagm_format_unknown.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_eagm_date_analyzer IMPLEMENTATION.
  METHOD analyze_date.
    RAISE EXCEPTION TYPE zcx_lab_56_eagm_no_date
      EXPORTING
        previous = io_previous.
  ENDMETHOD.

  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_eagm_format_unknown
      EXPORTING
        previous = io_previous.
  ENDMETHOD.

ENDCLASS.
