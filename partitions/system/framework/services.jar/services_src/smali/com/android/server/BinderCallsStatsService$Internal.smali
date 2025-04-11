.class public Lcom/android/server/BinderCallsStatsService$Internal;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-instance v0, Lcom/android/server/CustomizedBinderCallsStatsInternal;

    invoke-direct {v0, p1, p2}, Lcom/android/server/CustomizedBinderCallsStatsInternal;-><init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    return-void
.end method


# virtual methods
.method public getExportedCallStats()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getExportedExceptionStats()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public reportCpuUsage(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->reportCpuUsage(I)V

    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->reportProcessDied(IILjava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    invoke-virtual {p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->shutdown()V

    return-void
.end method
