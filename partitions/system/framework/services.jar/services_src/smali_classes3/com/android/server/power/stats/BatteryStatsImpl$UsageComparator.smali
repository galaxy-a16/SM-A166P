.class public Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/SemSimpleNetworkStats;Landroid/os/SemSimpleNetworkStats;)I
    .locals 4

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide p0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/os/SemSimpleNetworkStats;

    check-cast p2, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;->compare(Landroid/os/SemSimpleNetworkStats;Landroid/os/SemSimpleNetworkStats;)I

    move-result p0

    return p0
.end method
