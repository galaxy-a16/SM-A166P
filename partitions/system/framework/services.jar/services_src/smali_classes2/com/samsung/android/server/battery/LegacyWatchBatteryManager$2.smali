.class public Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "LegacyWatchBatteryManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

.field public final synthetic val$alarmListener:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iput-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "LegacyWatchBatteryManager"

    .line 181
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "device_address"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0, v3}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    .line 186
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0, p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 188
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string v1, "NOT_SUPPORTED or UNAVAILABLE_METHOD"

    .line 191
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_2

    .line 193
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V

    .line 194
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0, v4}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V

    .line 202
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p0, "not connected"

    .line 206
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result p2

    if-eq p2, v3, :cond_6

    const-string p0, "checkSupportedVersion fail"

    .line 211
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "showing"

    .line 216
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    .line 219
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRegistered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmRegistered(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/ mSyncState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result p2

    if-ne p2, v3, :cond_9

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmSyncStopOffset(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result p2

    int-to-long v2, p2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v6, v0, v2

    .line 224
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string v8, "WatchBatteryManagerAlarm"

    iget-object v9, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 228
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2, v3}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V

    .line 229
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/app/AlarmManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mcheckSyncStart(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method
