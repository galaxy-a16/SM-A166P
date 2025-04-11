.class public Lcom/android/server/usb/UsbUI$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbUI.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mPortReceiver ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbUI"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    const-string/jumbo v1, "portStatus"

    .line 250
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, "UsbPortStatus is null"

    .line 252
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p2, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmSourcePower(Lcom/android/server/usb/UsbUI;Z)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmSourcePower(Lcom/android/server/usb/UsbUI;Z)V

    .line 257
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "oldSourcePower="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSourcePower="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 259
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsEmergencyMode(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    :cond_2
    return-void
.end method
