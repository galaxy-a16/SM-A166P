.class public Lcom/android/server/BinderCallsStatsService$LifeCycle$1;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$CallStatsObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

.field public final synthetic val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;Landroid/os/BatteryStatsInternal;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->this$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noteBinderThreadNativeIds([I)V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryStatsInternal;->noteBinderThreadNativeIds([I)V

    return-void
.end method

.method public noteCallStats(IJLjava/util/Collection;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryStatsInternal;->noteBinderCallStats(IJLjava/util/Collection;)V

    return-void
.end method
