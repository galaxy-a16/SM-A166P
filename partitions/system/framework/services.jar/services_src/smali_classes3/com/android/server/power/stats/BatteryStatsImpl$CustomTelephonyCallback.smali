.class public Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 17895
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8

    .line 17899
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 17900
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 17901
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 17902
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    const/16 v4, 0xe

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    if-ne v2, v4, :cond_4

    if-eq v3, v7, :cond_2

    const/16 v2, 0xd

    if-ne v3, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 17922
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17926
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 17928
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmIsServiceStateNr(Lcom/android/server/power/stats/BatteryStatsImpl;Z)V

    goto :goto_1

    .line 17914
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17918
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 17920
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmIsServiceStateNr(Lcom/android/server/power/stats/BatteryStatsImpl;Z)V

    goto :goto_1

    :cond_4
    if-ne v2, v7, :cond_6

    .line 17931
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result p1

    if-nez p1, :cond_5

    .line 17935
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 17937
    :cond_5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmIsServiceStateNr(Lcom/android/server/power/stats/BatteryStatsImpl;Z)V

    goto :goto_1

    .line 17939
    :cond_6
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17943
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 17945
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fputmIsServiceStateNr(Lcom/android/server/power/stats/BatteryStatsImpl;Z)V

    :goto_1
    return-void
.end method
