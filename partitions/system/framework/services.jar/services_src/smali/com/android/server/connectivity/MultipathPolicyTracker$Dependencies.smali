.class public Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Ljava/time/Clock;
    .locals 3

    .line 126
    new-instance p0, Landroid/os/BestClock;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v1

    .line 127
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/time/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    return-object p0
.end method
