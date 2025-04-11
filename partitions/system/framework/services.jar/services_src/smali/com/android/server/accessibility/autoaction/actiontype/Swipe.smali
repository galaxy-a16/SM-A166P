.class public Lcom/android/server/accessibility/autoaction/actiontype/Swipe;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "Swipe.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mswipe(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->swipe(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 46
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Swipe;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 2

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Swipe Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x104012d

    return p0

    :pswitch_1
    const p0, 0x104012c

    return p0

    :pswitch_2
    const p0, 0x104012b

    return p0

    :pswitch_3
    const p0, 0x104012e

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x54cce40 -> :sswitch_3
        0x1aa61287 -> :sswitch_2
        0x1aa98dec -> :sswitch_1
        0x3ade90d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public performCornerAction(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final swipe(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 85
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 88
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v3}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    .line 89
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v13, 0x0

    aget-object v6, v12, v13

    invoke-virtual {v3, v2, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 91
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/hardware/input/InputManager;

    if-nez v14, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    .line 94
    aget-object v2, v12, v13

    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v15, 0x1002

    .line 96
    invoke-virtual {v2, v15}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v9, 0x800000

    .line 97
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v8, 0x2

    .line 100
    invoke-virtual {v14, v2, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 101
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 107
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 108
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 109
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 111
    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 115
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "swipe_right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "swipe_left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "swipe_down"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "swipe_up"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v13

    :goto_0
    const/high16 v0, 0x41100000    # 9.0f

    const/4 v3, 0x0

    const/high16 v16, 0x40c00000    # 6.0f

    packed-switch v4, :pswitch_data_0

    move v0, v3

    move/from16 v17, v0

    goto :goto_5

    :pswitch_0
    int-to-float v2, v2

    div-float v0, v2, v0

    .line 124
    aget-object v4, v12, v13

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v5, v0, v16

    add-float/2addr v5, v4

    cmpl-float v5, v5, v2

    if-lez v5, :cond_5

    sub-float/2addr v2, v4

    div-float v2, v2, v16

    goto :goto_3

    :cond_5
    :goto_1
    move/from16 v17, v0

    :goto_2
    move v0, v3

    goto :goto_5

    :pswitch_1
    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 130
    aget-object v0, v12, v13

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v2, v16

    add-float/2addr v4, v0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_6

    neg-float v0, v0

    div-float v0, v0, v16

    goto :goto_1

    :cond_6
    :goto_3
    move/from16 v17, v2

    goto :goto_2

    :pswitch_2
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_4

    :pswitch_3
    const/high16 v0, -0x3d380000    # -100.0f

    :goto_4
    move/from16 v17, v3

    :goto_5
    move v7, v13

    :goto_6
    int-to-float v2, v7

    cmpg-float v2, v2, v16

    if-gez v2, :cond_7

    .line 139
    aget-object v2, v12, v13

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v3, v17

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 140
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    .line 142
    aget-object v2, v12, v13

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v18, 0x1

    move/from16 v20, v2

    move/from16 v19, v3

    move-wide v2, v10

    move/from16 v21, v7

    move/from16 v7, v19

    move v13, v8

    move/from16 v8, v20

    move v13, v9

    move/from16 v9, v18

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v15}, Landroid/view/MotionEvent;->setSource(I)V

    .line 145
    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 146
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v3, 0x2

    .line 148
    invoke-virtual {v14, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v7, v21, 0x1

    move v9, v13

    const/4 v8, 0x2

    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    move v13, v9

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 154
    aget-object v0, v12, v0

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    move-wide v2, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->setSource(I)V

    .line 157
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v1, 0x2

    .line 160
    invoke-virtual {v14, v0, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 161
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54cce40 -> :sswitch_3
        0x1aa61287 -> :sswitch_2
        0x1aa98dec -> :sswitch_1
        0x3ade90d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
