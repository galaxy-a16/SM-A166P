.class public abstract Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.super Ljava/lang/Object;
.source "CornerActionType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "open_close_quick_panel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "send_sos_messages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "power_off_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "increase_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "screen_shot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "reduce_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "screen_rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "talk_to_bixby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "accessibility_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "open_close_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Corner Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_2
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_4
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_5
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_6
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_7
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_8
    invoke-static {p1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->createAction(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_9
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_a
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_b
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e294 -> :sswitch_13
        -0x74e910bd -> :sswitch_12
        -0x682f8f69 -> :sswitch_11
        -0x55236e7d -> :sswitch_10
        -0x5173c60f -> :sswitch_f
        -0x18e94be7 -> :sswitch_e
        -0x18db78e4 -> :sswitch_d
        -0x1479af36 -> :sswitch_c
        -0x291c913 -> :sswitch_b
        0x2e04e7 -> :sswitch_a
        0x30f4df -> :sswitch_9
        0x33af38 -> :sswitch_8
        0x1443e66e -> :sswitch_7
        0x1af46ecc -> :sswitch_6
        0x2d9a2c29 -> :sswitch_5
        0x3f33e64b -> :sswitch_4
        0x40828578 -> :sswitch_3
        0x4505db45 -> :sswitch_2
        0x65f68d8a -> :sswitch_1
        0x670f86b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .locals 2

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "double_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "click_and_hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Corner Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_1
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_2
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_3
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->createAction(Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTitleResId(Ljava/lang/String;)I
    .locals 2

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "open_close_quick_panel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "pause_auto_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "resume_auto_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "double_click"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "send_sos_messages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "power_off_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "drag_and_drop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "increase_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "drag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v0, "screen_shot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "sound_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v0, "reduce_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v0, "screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_19
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1a
    const-string/jumbo v0, "screen_rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v0, "click_and_hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v0, "talk_to_bixby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v0, "accessibility_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v0, "open_close_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Corner Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :pswitch_0
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->getStringResId()I

    move-result p0

    return p0

    :pswitch_1
    const p0, 0x104011e

    return p0

    :pswitch_2
    const p0, 0x1040122

    return p0

    .line 169
    :pswitch_3
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->getStringResId()I

    move-result p0

    return p0

    .line 145
    :pswitch_4
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->getStringResId()I

    move-result p0

    return p0

    .line 162
    :pswitch_5
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->getStringResId()I

    move-result p0

    return p0

    .line 186
    :pswitch_6
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 141
    :pswitch_7
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->getStringResId()I

    move-result p0

    return p0

    .line 177
    :pswitch_8
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 172
    :pswitch_9
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a
    const p0, 0x1040129

    return p0

    .line 156
    :pswitch_b
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 160
    :pswitch_c
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->getStringResId()I

    move-result p0

    return p0

    .line 158
    :pswitch_d
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->getStringResId()I

    move-result p0

    return p0

    .line 151
    :pswitch_e
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 183
    :pswitch_f
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->getStringResId()I

    move-result p0

    return p0

    .line 143
    :pswitch_10
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->getStringResId()I

    move-result p0

    return p0

    .line 167
    :pswitch_11
    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->getStringResId(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 137
    :pswitch_12
    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->getStringResId()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1f
        -0x74e910bd -> :sswitch_1e
        -0x682f8f69 -> :sswitch_1d
        -0x643f1902 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x146c6cb7 -> :sswitch_16
        -0x68ea6ef -> :sswitch_15
        -0x54cce40 -> :sswitch_14
        -0x291c913 -> :sswitch_13
        0x2e04e7 -> :sswitch_12
        0x2f2d34 -> :sswitch_11
        0x30f4df -> :sswitch_10
        0x1443e66e -> :sswitch_f
        0x19319b02 -> :sswitch_e
        0x1aa61287 -> :sswitch_d
        0x1aa98dec -> :sswitch_c
        0x1af46ecc -> :sswitch_b
        0x2d9a2c29 -> :sswitch_a
        0x34b9e0e2 -> :sswitch_9
        0x3ade90d7 -> :sswitch_8
        0x3f33e64b -> :sswitch_7
        0x40828578 -> :sswitch_6
        0x4505db45 -> :sswitch_5
        0x51e7c39a -> :sswitch_4
        0x5696664a -> :sswitch_3
        0x61dac0e1 -> :sswitch_2
        0x65f68d8a -> :sswitch_1
        0x670f86b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_11
        :pswitch_6
        :pswitch_11
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_e
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_11
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract performCornerAction(I)V
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    return-void
.end method
