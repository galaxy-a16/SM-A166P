.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device"

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    .line 147
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() USBK interfaceCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerServicePhysicalKey"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const/4 v6, 0x1

    if-ge v2, v1, :cond_6

    .line 149
    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    if-nez v7, :cond_1

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive() usbInterface is null, index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 155
    :cond_1
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    .line 156
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    if-ne v7, v6, :cond_5

    .line 159
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 160
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    if-gez p2, :cond_2

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ACTION_USB_DEVICE_ATTACHED] change mUSBKeyboardCount "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--> 0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 164
    :cond_2
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    goto :goto_3

    .line 165
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 166
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    if-ge p2, v6, :cond_4

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ACTION_USB_DEVICE_DETACHED] change mUSBKeyboardCount "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--> 1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 170
    :cond_4
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 177
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    if-eq p2, v1, :cond_7

    move v0, v6

    .line 180
    :cond_7
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 182
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz v0, :cond_9

    .line 184
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    or-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() USBK Connect C : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_4

    .line 188
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p1

    if-nez p1, :cond_9

    .line 190
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    and-int/lit8 p2, p2, -0x5

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() USBK DisConnect C : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mupdateBrightnessMode(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 194
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() keyboardState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
