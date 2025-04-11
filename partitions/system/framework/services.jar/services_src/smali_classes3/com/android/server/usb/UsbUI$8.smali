.class public Lcom/android/server/usb/UsbUI$8;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUEvent(USB Control): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TYPE"

    .line 471
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "STATE"

    .line 472
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usberr"

    .line 474
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "WORDS"

    const-string v5, "ADD"

    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "abnormal_reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 477
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const v0, 0x1040e7e

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V

    .line 479
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v2, 0x6d

    const v3, 0x1040e7d

    const v4, 0x1040e7c

    const-wide/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "REMOVE"

    .line 483
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 484
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 p1, 0x6d

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v3, "usbrestrict"

    .line 492
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "timesecurerestrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "securerestrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "securerelease"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 501
    :pswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "onUEvent(USB Control): Show USB BLK Notification"

    .line 502
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbRestrict(Lcom/android/server/usb/UsbUI;Z)V

    goto :goto_1

    .line 495
    :pswitch_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "onUEvent(USB Control): Show USB BLK Toast"

    .line 496
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const p1, 0x1040ec5

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V

    goto :goto_1

    .line 507
    :pswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "onUEvent(USB Control): Cancel USB BLK Notification"

    .line 508
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0, v4}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbRestrict(Lcom/android/server/usb/UsbUI;Z)V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54bab750 -> :sswitch_2
        -0x35cf50cd -> :sswitch_1
        0x70a39740 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
