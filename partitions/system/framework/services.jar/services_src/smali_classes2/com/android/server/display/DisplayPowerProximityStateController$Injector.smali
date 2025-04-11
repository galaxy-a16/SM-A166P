.class Lcom/android/server/display/DisplayPowerProximityStateController$Injector;
.super Ljava/lang/Object;
.source "DisplayPowerProximityStateController.java"


# direct methods
.method public static synthetic $r8$lambda$kkCNAGguZhTdDWA8PiZQoUjZn1g()J
    .locals 2

    .line 0
    invoke-static {}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;->lambda$createClock$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$createClock$0()J
    .locals 2

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public createClock()Lcom/android/server/display/DisplayPowerProximityStateController$Clock;
    .locals 0

    .line 634
    new-instance p0, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method
