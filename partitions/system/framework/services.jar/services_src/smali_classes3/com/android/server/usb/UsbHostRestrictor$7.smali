.class public Lcom/android/server/usb/UsbHostRestrictor$7;
.super Landroid/os/UEventObserver;
.source "UsbHostRestrictor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRODUCT"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmIsSupportScrlckblk()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmIsHostConnected(Z)V

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "UsbHostRestrictor"

    const-string/jumbo p1, "skip update vid:pid reason - SCREEN LOCK"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v2

    aget-object p1, p1, v3

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1, v0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v0, "/efs/usb_con_hist"

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadFileToString(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteVpidHistorytoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "remove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmIsHostConnected(Z)V

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmLockStatus()I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    :cond_4
    :goto_1
    return-void
.end method
