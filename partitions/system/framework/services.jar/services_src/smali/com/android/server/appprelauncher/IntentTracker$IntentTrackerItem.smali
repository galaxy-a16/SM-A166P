.class public final Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;
.super Ljava/lang/Object;
.source "IntentTracker.java"


# instance fields
.field public final mBeginTrackTimeNs:J

.field public final mIntent:Landroid/content/Intent;

.field public final mPackageName:Ljava/lang/String;

.field public final mTrackId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Intent;I)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mBeginTrackTimeNs:J

    .line 60
    iput-object p3, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mIntent:Landroid/content/Intent;

    .line 61
    iput-object p1, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mPackageName:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mUserId:I

    .line 63
    iput p4, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mTrackId:I

    return-void
.end method


# virtual methods
.method public getElapsedNs()J
    .locals 4

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mBeginTrackTimeNs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->getElapsedNs()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/appprelauncher/IntentTracker;->-$$Nest$sfgetINTENT_TRACK_TIMEOUT_NS()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentTrackerItem { mTrackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/IntentTracker$IntentTrackerItem;->getElapsedNs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
