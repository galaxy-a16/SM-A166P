.class public Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "BatteryStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(IZJI)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received unexpected transport in interfaceClassDataActivityChanged unexpected type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteWifiRadioPowerState(IJI)V

    goto :goto_1

    .line 228
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteMobileRadioPowerState(IJI)V

    :goto_1
    return-void
.end method
