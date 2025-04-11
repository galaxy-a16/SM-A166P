.class public Lcom/samsung/android/server/battery/WatchBatteryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "WatchBatteryManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "WatchBatteryManager"

    .line 184
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "address: "

    const-string v3, "device_address"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, v4}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    .line 189
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 192
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string v1, "NOT_SUPPORTED or UNAVAILABLE_METHOD"

    .line 195
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_2

    .line 197
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v5}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    .line 198
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v5}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 199
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, v5}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 208
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p2, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    .line 209
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 210
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p0, "not connected"

    .line 211
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    if-eq p2, v4, :cond_6

    const-string p0, "checkSupportedVersion fail"

    .line 216
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method
