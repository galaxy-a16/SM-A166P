.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/SemModemActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;->f$1:Landroid/os/SemModemActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;->f$1:Landroid/os/SemModemActivityInfo;

    invoke-static {v0, p0}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$pSqXcJYe-aLVxMcRFHIaSknsyQs(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V

    return-void
.end method
