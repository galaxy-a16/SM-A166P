.class public Lcom/android/server/accessibility/autoaction/actiontype/Zoom;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "Zoom.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Zoom"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 59
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    const-string v0, "input"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 61
    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    .line 62
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/Zoom;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;-><init>(Landroid/content/Context;Landroid/view/MotionEvent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 1

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x1040131

    return p0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Zoom Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x1040130

    return p0
.end method


# virtual methods
.method public final generateTouchEvent(IIIIII)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    .line 178
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    .line 179
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v6}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 180
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_1

    .line 181
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 182
    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 183
    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int v6, v1, v2

    .line 189
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050593

    .line 190
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/2addr v6, v8

    const/16 v8, 0xa

    if-ge v6, v8, :cond_2

    :goto_2
    move v6, v8

    goto :goto_3

    :cond_2
    const/16 v8, 0x14

    if-le v6, v8, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v8, v6, 0x4

    const/16 v9, 0x118

    .line 197
    div-int v8, v9, v8

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 205
    filled-new-array {v7}, [I

    move-result-object v15

    const/4 v14, 0x1

    .line 208
    filled-new-array {v7, v14}, [I

    move-result-object v28

    .line 212
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v9}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v29

    .line 213
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 214
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v9, v10}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v30

    .line 216
    aget-object v9, v29, v7

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 217
    aget-object v11, v30, v7

    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 218
    aget-object v12, v30, v14

    iput v10, v12, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v10, p1

    int-to-float v10, v10

    .line 220
    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 221
    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 222
    iput v10, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v10, v1

    .line 224
    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 225
    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v3

    .line 226
    iput v9, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    move-wide/from16 v9, v24

    move-wide/from16 v11, v26

    move/from16 v31, v14

    move/from16 v14, v16

    move-object/from16 v16, v29

    move/from16 v20, v5

    .line 228
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v9

    .line 231
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 232
    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v15, 0x2

    invoke-virtual {v10, v9, v15}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 234
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    int-to-long v13, v8

    add-long v26, v26, v13

    const/16 v8, 0x105

    const/16 v16, 0x2

    move-wide/from16 v9, v24

    move-wide/from16 v11, v26

    move-wide/from16 v32, v13

    move v13, v8

    move/from16 v14, v16

    move v8, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v30

    .line 238
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v9

    .line 242
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 243
    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v9, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 245
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    add-long v26, v26, v32

    move v15, v7

    :goto_4
    if-ge v15, v6, :cond_4

    .line 251
    aget-object v9, v30, v7

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-int v11, v2, v1

    int-to-float v11, v11

    int-to-float v12, v6

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 252
    aget-object v9, v30, v31

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-int v11, p5, v3

    int-to-float v11, v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-long v26, v26, v32

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    move-wide/from16 v9, v24

    move-wide/from16 v11, v26

    move/from16 v34, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v30

    move/from16 v20, v5

    .line 257
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v9

    .line 260
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 261
    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v9, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 263
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v15, v34, 0x1

    goto :goto_4

    :cond_4
    add-long v26, v26, v32

    const/16 v13, 0x106

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    move-wide/from16 v9, v24

    move-wide/from16 v11, v26

    move-object/from16 v15, v28

    move-object/from16 v16, v30

    move/from16 v20, v5

    .line 269
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 274
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v1, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 276
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    add-long v26, v26, v32

    .line 280
    aget-object v1, v29, v7

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-wide/from16 v11, v26

    move-object/from16 v16, v29

    .line 281
    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 285
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1, v8}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 287
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    sub-long v26, v26, v24

    .line 290
    :try_start_0
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 292
    sget-object v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final getTopPackageName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public performCornerAction(I)V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 86
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    filled-new-array {v1}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v0, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 89
    aget-object v0, v1, v3

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v4, v1

    .line 90
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v5, v0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.messaging"

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.android.app.launcher"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x14

    :goto_1
    move v6, v0

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;

    move-object v2, v1

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public zoom(IIFI)V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 112
    invoke-virtual {v0, p4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 115
    iget v0, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 120
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050594

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v3, v2

    mul-float/2addr v3, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr v3, p3

    const/high16 p3, 0x40000000    # 2.0f

    sub-float/2addr v3, p3

    float-to-int p3, v3

    add-int/lit8 v2, v2, -0x2

    if-le p3, v2, :cond_0

    move p3, v2

    :cond_0
    add-int/lit8 v5, p1, -0x32

    add-int/lit8 p1, p1, 0x32

    const-string v2, "com.samsung.android.messaging"

    .line 133
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 136
    :cond_1
    div-int/lit8 v2, p3, 0x2

    sub-int v2, v5, v2

    .line 138
    :goto_0
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    if-ge v2, v1, :cond_2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr p3, v2

    add-int/lit8 v2, v1, -0x1

    :cond_2
    sub-int/2addr v0, v1

    if-le p3, v0, :cond_3

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    sub-int/2addr v2, p3

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    move v7, p3

    :goto_1
    move p3, v2

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "zoom_in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "zoom_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v6, v7

    move v7, p1

    move v8, p4

    .line 155
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    goto :goto_2

    .line 158
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Zoom Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move-object v2, p0

    move v3, p2

    move v4, v5

    move v5, p3

    move v6, p1

    move v8, p4

    .line 152
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    :goto_2
    return-void
.end method
