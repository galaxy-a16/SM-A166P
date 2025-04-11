.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkStats;

.field public final synthetic f$1:Lcom/android/internal/app/IBatteryStatsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkStats;Lcom/android/internal/app/IBatteryStatsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Landroid/net/NetworkStats;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/app/IBatteryStatsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Landroid/net/NetworkStats;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/app/IBatteryStatsCallback;

    invoke-static {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$N2DG-4pJdC0Yds9Y7i33czdLfHs(Landroid/net/NetworkStats;Lcom/android/internal/app/IBatteryStatsCallback;)V

    return-void
.end method
