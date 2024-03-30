CLASS zcl_lab_43_eagm_navigation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
      log         TYPE string,
      screen_type TYPE string.

    METHODS:

      on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_eagm_screen IMPORTING ev_pos_x
                                                                                 ev_pos_y
                                                                                 sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_eagm_navigation IMPLEMENTATION.

  METHOD on_touch_screen.
    me->screen_type = sender->screen_type.
    me->log = |Pos X: { ev_pos_x } - Pos Y: { ev_pos_y } - Screen Type: { screen_type } |.

  ENDMETHOD.



ENDCLASS.
