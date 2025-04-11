.class public Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "UsbHostRestrictionReceiver Receiver onReceive"

    const-string v0, "UsbHostRestrictor"

    .line 299
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    .line 302
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string/jumbo p1, "reason"

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    const-string v2, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    const-string v3, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    const-string v4, "ON_ALL"

    const-string v5, "OFF"

    if-nez p1, :cond_3

    const-string p1, "UsbHostRestrictionReceiver : reason - ALLOW"

    .line 308
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 311
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "UsbHostRestrictionReceiver USB is already UNBLOCKED"

    .line 315
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 319
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 323
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    const-string p1, "UsbHostRestrictionReceiver : reason - DISALLOW"

    .line 326
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 329
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p1

    .line 331
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 332
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 333
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string p2, "ON_HOST_MDM"

    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "UsbHostRestrictionReceiver BLOCK USB HOST"

    .line 335
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p0, "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE"

    .line 339
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_a

    const-string p1, "UsbHostRestrictionReceiver : reason - INIT"

    .line 344
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 348
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 350
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result p1

    if-ne p1, v6, :cond_9

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetisMDMBlock()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST"

    .line 351
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 354
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 360
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_8
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string p0, "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos"

    .line 367
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const-string p0, "UsbHostRestrictionReceiver reason is unknown."

    .line 372
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_0
    return-void
.end method
