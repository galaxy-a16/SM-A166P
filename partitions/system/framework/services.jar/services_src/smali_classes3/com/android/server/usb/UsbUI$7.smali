.class public Lcom/android/server/usb/UsbUI$7;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUEvent(Host Interface): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION"

    .line 395
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "INTERFACE"

    .line 396
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WARNING"

    .line 398
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unsupport_accessory"

    .line 401
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v6, 0x72

    .line 407
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040ec8

    const v8, 0x1040ec7

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v4, "no_response"

    .line 409
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v6, 0x73

    .line 415
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040eaa

    const v8, 0x1040ea9

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "hub_depth_exceed"

    .line 417
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v6, 0x74

    .line 423
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040e99

    const v8, 0x1040e98

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_1

    :cond_2
    const-string v4, "hub_power_exceed"

    .line 425
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v6, 0x75

    .line 431
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v9, 0x1

    const v7, 0x1040eaa

    const v8, 0x1040e9a

    invoke-static/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_1

    :cond_3
    const-string v4, "host_resource_exceed"

    .line 433
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v5, 0x76

    .line 439
    iget-object v4, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    const-wide/16 v8, 0x1

    const v6, 0x1040e97

    const v7, 0x1040e96

    invoke-static/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_1

    :cond_4
    :try_start_0
    const-string v3, "/"

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 445
    aget-object v3, v2, v3

    const/4 v4, 0x1

    .line 446
    aget-object v4, v2, v4

    const/4 v5, 0x2

    .line 447
    aget-object v2, v2, v5

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-nez v2, :cond_5

    goto :goto_0

    .line 451
    :cond_5
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$7;->this$0:Lcom/android/server/usb/UsbUI;

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 454
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 451
    invoke-static {p0, v0, v3, v4, v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbInterface(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayIndexOutOfBoundsException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 456
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse state or devPath from event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
