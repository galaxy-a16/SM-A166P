.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$7VDvHexgqszdbOz_VQFie1GweuQ(Lcom/android/server/am/BatteryStatsService;I)V

    return-void
.end method
