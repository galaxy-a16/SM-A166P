.class public final Lcom/android/server/input/KeyboardBacklightController;
.super Ljava/lang/Object;
.source "KeyboardBacklightController.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field static final BRIGHTNESS_VALUE_FOR_LEVEL:[I

.field public static final DEBUG:Z

.field static final USER_INACTIVITY_THRESHOLD_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBacklightOn:Z

.field public mIsInteractive:Z

.field public final mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

.field public final mKeyboardBacklights:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method public static synthetic $r8$lambda$9qeM95QcVs1gAs9tKiL6-3hQWHQ(Lcom/android/server/input/KeyboardBacklightController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monKeyboardBacklightListenerDied(Lcom/android/server/input/KeyboardBacklightController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onKeyboardBacklightListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "KbdBacklightController"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    const-wide/16 v0, 0x1e

    .line 77
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/KeyboardBacklightController;->USER_INACTIVITY_THRESHOLD_MILLIS:J

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 80
    sput-object v0, Lcom/android/server/input/KeyboardBacklightController;->BRIGHTNESS_VALUE_FOR_LEVEL:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 105
    sget-object v1, Lcom/android/server/input/KeyboardBacklightController;->BRIGHTNESS_VALUE_FOR_LEVEL:[I

    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 112
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 114
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 115
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    invoke-direct {p1, p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isValidBacklightNodePath(Ljava/lang/String;)Z
    .locals 4

    .line 420
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2f

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 427
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "leds"

    .line 429
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "kbd_backlight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public decrementKeyboardBacklight(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 150
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 438
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KbdBacklightController: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 440
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyboard backlights, isBacklightOn = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getKeyboardBacklight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 2

    .line 325
    invoke-virtual {p1}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/lights/Light;

    .line 326
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleInteractiveStateChange(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserInactivity()V

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 278
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleInteractiveStateChange(Z)V

    return v2

    .line 275
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserInactivity()V

    return v2

    .line 272
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    return v2

    .line 269
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v2

    .line 266
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v2

    .line 261
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleUserActivity()V
    .locals 6

    .line 217
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    const/4 v0, 0x0

    move v1, v0

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 224
    iget-object v3, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 225
    invoke-static {v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateBacklightState(ILandroid/hardware/lights/Light;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/input/KeyboardBacklightController;->USER_INACTIVITY_THRESHOLD_MILLIS:J

    add-long/2addr v2, v4

    .line 230
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final handleUserInactivity()V
    .locals 5

    .line 235
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    move v1, v0

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 240
    invoke-static {v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateBacklightState(ILandroid/hardware/lights/Light;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public incrementKeyboardBacklight(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyUserActivity()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 4

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardBacklightController;->getKeyboardBacklight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v1

    if-nez v1, :cond_1

    .line 305
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v2, :cond_2

    .line 309
    invoke-static {v2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    return-void

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    invoke-direct {v3, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;-><init>(Landroid/hardware/lights/Light;)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/KeyboardBacklightController;->restoreBacklightBrightness(Landroid/view/InputDevice;Landroid/hardware/lights/Light;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onInteractiveChanged(Z)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 162
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onKeyboardBacklightListenerDied(I)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 405
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onKeyboardBacklightUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    const-string v0, "ACTION"

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SUBSYSTEM"

    .line 411
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LEDS"

    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DEVPATH"

    .line 412
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Lcom/android/server/input/KeyboardBacklightController;->isValidBacklightNodePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 349
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 341
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final restoreBacklightBrightness(Landroid/view/InputDevice;Landroid/hardware/lights/Light;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 198
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v3

    .line 197
    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/PersistentDataStore;->getKeyboardBacklightBrightness(Ljava/lang/String;I)Ljava/util/OptionalInt;

    move-result-object v1

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 201
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    sget-object v3, Lcom/android/server/input/KeyboardBacklightController;->BRIGHTNESS_VALUE_FOR_LEVEL:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    const/16 v3, 0xa

    .line 204
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/input/KeyboardBacklightController;->updateBacklightState(ILandroid/hardware/lights/Light;IZ)V

    .line 208
    sget-boolean p0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "KbdBacklightController"

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Restoring brightness level "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 199
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public systemRunning()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 122
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 124
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$1;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    const-string p0, "kbd_backlight"

    .line 138
    invoke-virtual {v0, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    if-eqz v1, :cond_1

    .line 366
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_0

    .line 370
    iget-object p1, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 371
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    monitor-exit v0

    return-void

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 372
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBacklightState(ILandroid/hardware/lights/Light;IZ)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    .line 383
    iget-boolean v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/input/KeyboardBacklightController;->BRIGHTNESS_VALUE_FOR_LEVEL:[I

    aget v2, v2, p3

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 382
    :goto_0
    invoke-interface {v1, p1, p2, v2}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 385
    sget-boolean p2, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "KbdBacklightController"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(isBacklightOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    invoke-static {v0, p3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fputmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;I)V

    .line 391
    iget-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter p2

    .line 392
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 393
    new-instance v0, Landroid/hardware/input/IKeyboardBacklightState;

    invoke-direct {v0}, Landroid/hardware/input/IKeyboardBacklightState;-><init>()V

    .line 394
    iput p3, v0, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    const/16 v1, 0xa

    .line 395
    iput v1, v0, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    .line 396
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-virtual {v1, p1, v0, p4}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->notifyKeyboardBacklightChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 399
    :cond_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V
    .locals 5

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;

    move-result-object v2

    .line 173
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v1

    .line 175
    sget-object v3, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_1

    add-int/2addr v1, v4

    const/16 p2, 0xa

    .line 176
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v4

    const/4 p2, 0x0

    .line 178
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 180
    :goto_0
    invoke-virtual {p0, p1, v2, p2, v4}, Lcom/android/server/input/KeyboardBacklightController;->updateBacklightState(ILandroid/hardware/lights/Light;IZ)V

    .line 183
    iget-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter p1

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    sget-object v3, Lcom/android/server/input/KeyboardBacklightController;->BRIGHTNESS_VALUE_FOR_LEVEL:[I

    aget p2, v3, p2

    .line 185
    invoke-virtual {v1, v0, v2, p2}, Lcom/android/server/input/PersistentDataStore;->setKeyboardBacklightBrightness(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 191
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 189
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 190
    throw p2

    :catchall_1
    move-exception p0

    .line 191
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
