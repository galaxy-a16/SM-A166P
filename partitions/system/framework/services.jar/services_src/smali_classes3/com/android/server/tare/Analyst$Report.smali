.class public final Lcom/android/server/tare/Analyst$Report;
.super Ljava/lang/Object;
.source "Analyst.java"


# instance fields
.field public bsScreenOffDischargeMahBase:J

.field public bsScreenOffRealtimeBase:J

.field public cumulativeBatteryDischarge:I

.field public cumulativeLoss:J

.field public cumulativeNegativeRegulations:J

.field public cumulativePositiveRegulations:J

.field public cumulativeProfit:J

.field public cumulativeRewards:J

.field public currentBatteryLevel:I

.field public numNegativeRegulations:I

.field public numPositiveRegulations:I

.field public numProfitableActions:I

.field public numRewards:I

.field public numUnprofitableActions:I

.field public screenOffDischargeMah:J

.field public screenOffDurationMs:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffDischargeMahBase:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffRealtimeBase:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputbsScreenOffDischargeMahBase(Lcom/android/server/tare/Analyst$Report;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffDischargeMahBase:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbsScreenOffRealtimeBase(Lcom/android/server/tare/Analyst$Report;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffRealtimeBase:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/Analyst$Report;->clear()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 56
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 63
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    .line 69
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 70
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    .line 74
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 75
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 79
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 80
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    .line 84
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 85
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    .line 91
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    .line 95
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    .line 97
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffRealtimeBase:J

    .line 101
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffDischargeMahBase:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 105
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 107
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    .line 108
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 109
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    .line 110
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 111
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 112
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 113
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    .line 114
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 115
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    .line 116
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->screenOffDurationMs:J

    .line 117
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->screenOffDischargeMah:J

    .line 118
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffRealtimeBase:J

    .line 119
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->bsScreenOffDischargeMahBase:J

    return-void
.end method
