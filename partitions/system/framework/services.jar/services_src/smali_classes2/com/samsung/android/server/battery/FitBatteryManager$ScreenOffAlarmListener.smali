.class public Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;
.super Ljava/lang/Object;
.source "FitBatteryManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/FitBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/FitBatteryManager;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/FitBatteryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/FitBatteryManager;Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/FitBatteryManager;)V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    const-string v0, "FitBatteryManager"

    const-string v1, "ScreenOffAlarmListener onAlarm() "

    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/FitBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->-$$Nest$mcheckSyncStop(Lcom/samsung/android/server/battery/FitBatteryManager;)V

    return-void
.end method
