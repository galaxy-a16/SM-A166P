.class public Lcom/android/server/usb/UsbHostRestrictor$LockTimer;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;Lcom/android/server/usb/UsbHostRestrictor$LockTimer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmIsSupportScrlckblk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    const-wide/32 v0, 0xea60

    .line 281
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
