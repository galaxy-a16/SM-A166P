.class public Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;
.super Ljava/lang/Object;
.source "LegacyWatchBatteryManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    const-string v0, "LegacyWatchBatteryManager"

    const-string v1, "ScreenOffAlarmListener onAlarm() "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$mrequestBatteryDataSync(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;

    invoke-static {p0, v1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->-$$Nest$fputmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V

    :cond_0
    return-void
.end method
