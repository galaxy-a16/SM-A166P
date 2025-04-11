.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"


# instance fields
.field public keyboardState:I

.field public mBTKeyboardCount:I

.field public mContext:Landroid/content/Context;

.field public mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

.field public mUSBKeyboardCount:I

.field public mUSBKeyboardCountOld:I

.field public prevAutoMode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBrightnessMode(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 43
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 44
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return-void
.end method


# virtual methods
.method public final connectedHWKeyboard()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    return-void
.end method

.method public isAccessoryKeyboard()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return p0
.end method

.method public isHWAccessoryKeyboard()Z
    .locals 5

    .line 82
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    .line 85
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnectedDexOnPC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodManagerServicePhysicalKey"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public isPogoBackfolded()Z
    .locals 2

    .line 90
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 91
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPogoBackfolded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerServicePhysicalKey"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isPogoConnectedOnly()Z
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    if-eqz p0, :cond_0

    and-int/lit8 p0, p0, -0x49

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 4

    .line 115
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v2, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 135
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->init()V

    return-void
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    return-void
.end method

.method public final updateBrightnessMode()V
    .locals 3

    .line 108
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    iget v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    return-void
.end method

.method public updateKeyboardStateForDEXOnPC(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 75
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    goto :goto_0

    .line 77
    :cond_0
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    :goto_0
    return-void
.end method
