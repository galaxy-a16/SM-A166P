.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->$r8$lambda$_JuYan43VPD7-YDui2w7Tp3S-cg(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    return-void
.end method
