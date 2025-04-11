.class public Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
.super Ljava/lang/Object;
.source "EnergyConsumerSnapshot.java"


# instance fields
.field public bluetoothChargeUC:J

.field public cameraChargeUC:J

.field public cpuClusterChargeUC:[J

.field public displayChargeUC:[J

.field public gnssChargeUC:J

.field public mobileRadioChargeUC:J

.field public otherTotalChargeUC:[J

.field public otherUidChargesUC:[Landroid/util/SparseLongArray;

.field public wifiChargeUC:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 109
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 115
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 118
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 121
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 124
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    .line 127
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 130
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 133
    iput-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .line 136
    iget-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->isEmpty([J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmpty([J)Z
    .locals 7

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 149
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method
