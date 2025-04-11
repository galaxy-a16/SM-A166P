.class public Lcom/android/server/usb/UsbHostRestrictor$1;
.super Landroid/database/ContentObserver;
.source "UsbHostRestrictor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;Landroid/os/Handler;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "block_usb_lock"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmSettingBlockUsbLock(I)V

    .line 183
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmIsSupportScrlckblk()Z

    move-result p1

    const-string v0, "UsbHostRestrictor"

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmSecureKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmSettingBlockUsbLock()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$misAdbOnlyMode(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "changed setting LOCK_SCREEN_BLOCK : OFF -> ON"

    .line 185
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 186
    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmLockStatus(I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmSecureKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetmSettingBlockUsbLock()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "changed setting LOCK_SCREEN_BLOCK : ON -> OFF"

    .line 188
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteScrLckBlkSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 190
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputmLockStatus(I)V

    .line 191
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto :goto_0

    :cond_1
    const-string p0, "can\'t change block status (adb-only or unknown setting value)"

    .line 193
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "can\'t change block status (unsupported block or none-lock)"

    .line 196
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
