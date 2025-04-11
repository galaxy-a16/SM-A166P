.class public abstract Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public mRecentPrefetchStrs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1039
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1040
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
.end method

.method public finalizePredict()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1045
    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1046
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1047
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
.end method
