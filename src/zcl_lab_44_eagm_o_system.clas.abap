CLASS zcl_lab_44_eagm_o_system DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_lab_eagm_05_browser.

    METHODS:
      mouse_movement RETURNING VALUE(rv_text) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_eagm_o_system IMPLEMENTATION.

  METHOD mouse_movement.
    rv_text = |Event Raise: Mouse movement|.
    RAISE EVENT zif_lab_eagm_05_browser~close_window.
  ENDMETHOD.

ENDCLASS.
