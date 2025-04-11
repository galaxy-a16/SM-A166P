.class public Lcom/android/server/tare/EconomicPolicy$Reward;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# instance fields
.field public final id:I

.field public final instantReward:J

.field public final maxDailyReward:J

.field public final ongoingRewardPerSecond:J


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->id:I

    .line 183
    iput-wide p2, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    .line 184
    iput-wide p4, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    .line 185
    iput-wide p6, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    return-void
.end method
