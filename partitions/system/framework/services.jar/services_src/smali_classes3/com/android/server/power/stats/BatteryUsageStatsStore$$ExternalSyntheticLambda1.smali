.class public final synthetic Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryUsageStatsStore;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsStore;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsStore;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsStore;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->$r8$lambda$UadUfauiYb68mDU19ZS6-vk_IkY(Lcom/android/server/power/stats/BatteryUsageStatsStore;Ljava/util/List;)V

    return-void
.end method
