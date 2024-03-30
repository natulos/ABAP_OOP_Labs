CLASS zcl_lab_45_eagm_chrome DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
      notification TYPE string.

    METHODS:
      on_close_window FOR EVENT close_window OF zif_lab_eagm_05_browser.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_eagm_chrome IMPLEMENTATION.
  METHOD on_close_window.
    me->notification = |Chrome tab closed|.
  ENDMETHOD.

ENDCLASS.
