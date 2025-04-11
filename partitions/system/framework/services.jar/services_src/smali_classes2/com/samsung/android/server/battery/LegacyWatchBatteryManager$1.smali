.class public Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;
.super Landroid/database/ContentObserver;
.source "LegacyWatchBatteryManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyWatchBatteryManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "cur is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "_btAddress"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Level"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", batteryLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", batteryStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", storedTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v3, v3, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v3, v3, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v4, v4, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v5, v5, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v5, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    iget-object v5, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v5, v5, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v5, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    if-gez v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v2, v2, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {v1, p2, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto/16 :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v2, :cond_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object p2

    const-string v1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    iget-object v2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    iget-object v2, v2, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method
