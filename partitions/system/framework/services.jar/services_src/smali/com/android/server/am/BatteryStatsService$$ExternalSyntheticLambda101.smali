.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$2:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$3:I

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$1:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$2:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$3:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$4:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$5:J

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$jbR-rBiHn0jjn3n0rtB2aqfMlWQ(Lcom/android/server/am/BatteryStatsService;IIIJJ)V

    return-void
.end method
