.class public Lcom/android/server/usb/UsbUI$9;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8

    const-string v0, "SWITCH_STATE"

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCIC"

    .line 528
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(USB CCIC): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UsbUI"

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "115"

    .line 537
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 538
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const v0, 0x1040ecb

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V

    .line 539
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v3, 0x6c

    const v4, 0x1040ecc

    const v5, 0x1040ecb

    const-wide/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 544
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v0, 0x6c

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V

    .line 547
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    const-string v0, "WATER"

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V

    goto :goto_1

    :cond_3
    const-string v0, "DRY"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V

    .line 554
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result v0

    if-eq v0, p1, :cond_5

    .line 555
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbWetDetection(Lcom/android/server/usb/UsbUI;Z)V

    :cond_5
    return-void
.end method
