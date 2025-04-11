.class public Lcom/android/server/power/stats/UserPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "UserPowerCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 0

    invoke-virtual {p7}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object p0

    const/4 p2, -0x1

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_4

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result p5

    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p6

    const/16 p7, 0x2710

    if-ge p6, p7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    invoke-static {p0, p5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p6

    if-nez p6, :cond_3

    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
