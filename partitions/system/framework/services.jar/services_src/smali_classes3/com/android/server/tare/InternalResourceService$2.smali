.class public Lcom/android/server/tare/InternalResourceService$2;
.super Landroid/content/BroadcastReceiver;
.source "InternalResourceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 254
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move p1, v1

    :goto_1
    const-string v0, "android.intent.extra.user_handle"

    const-string v3, "android.intent.extra.UID"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 274
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$2;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 276
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageRemoved(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string p1, "android.intent.extra.REPLACING"

    .line 280
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$2;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 283
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageAdded(ILjava/lang/String;)V

    goto :goto_2

    .line 295
    :pswitch_2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 296
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->onUserAdded(I)V

    goto :goto_2

    .line 305
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onExemptionListChanged()V

    goto :goto_2

    .line 271
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBatteryLevelChanged()V

    goto :goto_2

    .line 288
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$2;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 290
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 291
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageForceStopped(ILjava/lang/String;)V

    goto :goto_2

    .line 262
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHasBattery(Lcom/android/server/tare/InternalResourceService;)Z

    move-result p1

    const-string/jumbo v0, "present"

    .line 263
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHasBattery(Lcom/android/server/tare/InternalResourceService;)Z

    move-result p2

    if-eq p2, p1, :cond_8

    .line 265
    iget-object p2, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p2, p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmHasBattery(Lcom/android/server/tare/InternalResourceService;Z)V

    .line 266
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmConfigObserver(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->-$$Nest$mupdateEnabledStatus(Lcom/android/server/tare/InternalResourceService$ConfigObserver;)V

    goto :goto_2

    .line 300
    :pswitch_7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 301
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->onUserRemoved(I)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_7
        -0x5bb23923 -> :sswitch_6
        -0x2d2ad030 -> :sswitch_5
        -0x2545adbe -> :sswitch_4
        -0x3e97d1f -> :sswitch_3
        0x42dd01f1 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
