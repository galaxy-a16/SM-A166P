.class public final Lcom/android/server/am/Pageboost$LRUPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>(Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy-IA;)V

    return-void
.end method


# virtual methods
.method public appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
    .locals 9

    .line 1057
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 1058
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1061
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1062
    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1063
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1064
    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1065
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1066
    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1067
    :try_start_3
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1072
    invoke-virtual {p1, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1073
    invoke-virtual {v0, v7, v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_1

    .line 1079
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p0

    .line 1065
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 1081
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1082
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1083
    monitor-exit v2

    return-object v0

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .locals 4

    .line 1090
    iget-object p2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1091
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1093
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    .line 1099
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1102
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1103
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1104
    monitor-exit p2

    return v1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
