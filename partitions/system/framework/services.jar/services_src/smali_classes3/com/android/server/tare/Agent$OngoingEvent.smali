.class Lcom/android/server/tare/Agent$OngoingEvent;
.super Ljava/lang/Object;
.source "Agent.java"


# instance fields
.field public final actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

.field public final eventId:I

.field public refCount:I

.field public final reward:Lcom/android/server/tare/EconomicPolicy$Reward;

.field public final startTimeElapsed:J

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 1022
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 1023
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1024
    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 1025
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    const/4 p1, 0x1

    .line 1026
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 1012
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 1013
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    .line 1014
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    const/4 p1, 0x0

    .line 1015
    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    const/4 p1, 0x1

    .line 1016
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    return-void
.end method


# virtual methods
.method public getCtpPerSec()J
    .locals 2

    .line 1041
    iget-object p0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz p0, :cond_0

    .line 1042
    iget-wide v0, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaPerSec()J
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz v0, :cond_0

    .line 1031
    iget-wide v0, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v0, v0

    return-wide v0

    .line 1033
    :cond_0
    iget-object p0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-eqz p0, :cond_1

    .line 1034
    iget-wide v0, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    return-wide v0

    .line 1036
    :cond_1
    invoke-static {}, Lcom/android/server/tare/Agent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No action or reward in ongoing event?!??!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method
