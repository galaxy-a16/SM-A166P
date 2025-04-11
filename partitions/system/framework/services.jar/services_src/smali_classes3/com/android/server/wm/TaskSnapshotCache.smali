.class public Lcom/android/server/wm/TaskSnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "TaskSnapshotCache.java"


# static fields
.field public static sSplitModeMaxCacheSize:I


# instance fields
.field public final mLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public mTaskIdsInSplitMode:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$rWWsM1UY9S7w3zH-L4BtknjEDK0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->lambda$updateSplitModeSnapshotCache$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppSnapshotLoader;)V
    .locals 1

    const-string v0, "Task"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-void
.end method

.method public static synthetic lambda$updateSplitModeSnapshotCache$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    .line 184
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static setMaxSnapshot(I)V
    .locals 1

    .line 110
    sput p0, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    .line 114
    sput p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 116
    sput p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .locals 1

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SnapshotCache;->getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/TaskSnapshotCache;->tryRestoreFromDisk(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    invoke-direct {v3, p2, v0}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public bridge synthetic putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public final removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 11

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v1, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    if-gt v0, v1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->shouldApplySplitModeSnapshotPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    move v4, v1

    .line 140
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 142
    iget-object v6, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v6, :cond_2

    if-eqz p1, :cond_3

    .line 144
    iget-object v7, v6, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_3

    .line 146
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v9, v6, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v8, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_3
    iget-object v7, v6, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_4

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mKeepSnapshotCache:Z

    if-eqz v7, :cond_4

    goto :goto_1

    .line 153
    :cond_4
    iget-wide v6, v6, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move v4, v5

    move-wide v2, v6

    goto :goto_1

    :cond_5
    if-eq v4, v1, :cond_6

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->updateSplitModeSnapshotCache()V

    :cond_7
    return-void
.end method

.method public final shouldApplySplitModeSnapshotPolicy()Z
    .locals 0

    .line 171
    sget p0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final tryRestoreFromDisk(IIZ)Landroid/window/TaskSnapshot;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final updateSplitModeSnapshotCache()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotCache;->shouldApplySplitModeSnapshotPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 186
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    .line 185
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method
