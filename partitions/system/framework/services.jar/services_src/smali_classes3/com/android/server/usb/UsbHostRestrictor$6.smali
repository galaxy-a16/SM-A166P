.class public Lcom/android/server/usb/UsbHostRestrictor$6;
.super Landroid/os/UEventObserver;
.source "UsbHostRestrictor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$6;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    const-string v0, "USB_STATE"

    .line 833
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 834
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmIsSupportScrlckblk()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DISCONNECTED"

    .line 835
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 836
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmIsDeviceConnected(Z)V

    .line 837
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 838
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$6;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    goto :goto_0

    :cond_0
    const-string v0, "CONNECTED"

    .line 840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmIsDeviceConnected(Z)V

    .line 842
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 843
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$6;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    move-result p1

    if-nez p1, :cond_3

    .line 844
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$6;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto :goto_0

    :cond_1
    const-string p0, "CONFIGURED"

    .line 847
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 848
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    goto :goto_0

    .line 851
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbHostRestrictor"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
