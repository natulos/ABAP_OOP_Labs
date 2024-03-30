CLASS zcl_lab_42_eagm_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    EVENTS:
      touch_screen EXPORTING VALUE(ev_pos_x) TYPE i
                             VALUE(ev_pos_y) TYPE i.

    DATA:
      pos_x       TYPE i,
      pos_y       TYPE i,
      screen_type TYPE string.

    METHODS:
     constructor IMPORTING iv_screen_type TYPE string,
     element_selected.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_eagm_screen IMPLEMENTATION.

  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.

  METHOD element_selected.
    RAISE EVENT touch_screen EXPORTING ev_pos_x = me->pos_x
                                       ev_pos_y = me->pos_y.
  ENDMETHOD.

ENDCLASS.
