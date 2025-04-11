.class public Lcom/android/server/appprelauncher/IntentTracker;
.super Ljava/lang/Object;
.source "IntentTracker.java"


# static fields
.field public static final DEBUG:Z

.field public static final INTENT_TRACK_TIMEOUT_NS:J


# instance fields
.field public final mIntentTrackerItems:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public mNextTrackId:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINTENT_TRACK_TIMEOUT_NS()J
    .locals 2

    sget-wide v0, Lcom/android/server/appprelauncher/IntentTracker;->INTENT_TRACK_TIMEOUT_NS:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appprelauncher/IntentTracker;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appprelauncher/IntentTracker;->INTENT_TRACK_TIMEOUT_NS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mIntentTrackerItems:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mNextTrackId:I

    iput-object p1, p0, Lcom/android/server/appprelauncher/IntentTracker;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findTrack(Ljava/lang/String;I)Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "IntentTracker"

    const-string p1, "Provided invalid package name"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/appprelauncher/IntentTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/IntentTracker;->validateLocked()V

    iget-object p0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mIntentTrackerItems:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;

    iget-object v3, v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mUserId:I

    if-ne p2, v3, :cond_1

    monitor-exit v1

    return-object v2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/appprelauncher/IntentTracker;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "IntentTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public hasTrack(Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/IntentTracker;->findTrack(Ljava/lang/String;I)Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startTrackIntent(Landroid/content/Intent;I)I
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appprelauncher/IntentTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/IntentTracker;->validateLocked()V

    new-instance v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;

    iget v3, p0, Lcom/android/server/appprelauncher/IntentTracker;->mNextTrackId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/appprelauncher/IntentTracker;->mNextTrackId:I

    invoke-direct {v2, v0, p2, p1, v3}, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;-><init>(Ljava/lang/String;ILandroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mIntentTrackerItems:Ljava/util/Map;

    iget p1, v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mTrackId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/appprelauncher/IntentTracker;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "IntentTracker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start tracking "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p0, v2, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mTrackId:I

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopTrackIntent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mIntentTrackerItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/appprelauncher/IntentTracker;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "IntentTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End tracking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public validateLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprelauncher/IntentTracker;->mIntentTrackerItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;

    invoke-virtual {v1}, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found too old track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntentTracker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v1, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mTrackId:I

    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/IntentTracker;->stopTrackIntent(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
