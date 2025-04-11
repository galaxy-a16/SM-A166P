.class public Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# instance fields
.field public alertRate:Lcom/android/server/notification/AlertRateLimiter;

.field public enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCreated:J

.field public mLastAccessTime:J

.field public mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAlertViolations:I

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numImagesRemoved:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numUndecoratedRemoteViews:I

.field public numUpdatedByApp:I

.field public numUserInitiatedJob:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCreated(Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 415
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 417
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_imp_noisy_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 418
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_imp_quiet_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 419
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v0, "note_importance_"

    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 420
    new-instance p1, Lcom/android/server/notification/RateEstimator;

    invoke-direct {p1}, Lcom/android/server/notification/RateEstimator;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 421
    new-instance p1, Lcom/android/server/notification/AlertRateLimiter;

    invoke-direct {p1}, Lcom/android/server/notification/AlertRateLimiter;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    return-void
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 432
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 433
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    .line 434
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 437
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 438
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    :cond_1
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 442
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 446
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    :cond_3
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 450
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 453
    :cond_4
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_5

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_6

    .line 456
    :cond_5
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 459
    :cond_6
    iget v1, v0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_0

    .line 461
    :cond_7
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    goto :goto_0

    .line 464
    :cond_8
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 468
    :goto_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v2, :cond_9

    .line 469
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    goto :goto_1

    .line 471
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 473
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 475
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v1, "android.bigText"

    .line 476
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 477
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    :cond_a
    const-string v1, "android.picture"

    .line 479
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 480
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    :cond_b
    const-string v1, "android.largeIcon"

    .line 482
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 483
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    :cond_c
    const-string v1, "android.textLines"

    .line 485
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 486
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    :cond_d
    const-string v1, "android.mediaSession"

    .line 488
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 489
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    :cond_e
    const-string v1, "android.title"

    .line 491
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 492
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 493
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    :cond_f
    const-string v1, "android.text"

    .line 495
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 496
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 497
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    :cond_10
    const-string v1, "android.subText"

    .line 499
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 500
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 501
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    :cond_11
    const-string v1, "android.infoText"

    .line 503
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 504
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 505
    iget p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    :cond_12
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 589
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 6

    .line 696
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 697
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 698
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    sub-long/2addr v2, v4

    const-string v4, "duration"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "numEnqueuedByApp"

    .line 700
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numPostedByApp"

    .line 701
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numUpdatedByApp"

    .line 702
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numRemovedByApp"

    .line 703
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numPeopleCacheHit"

    .line 704
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numPeopleCacheMiss"

    .line 705
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithStaredPeople"

    .line 706
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithValidPeople"

    .line 707
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numBlocked"

    .line 708
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numSuspendedByAdmin"

    .line 709
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithActions"

    .line 710
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numPrivate"

    .line 711
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numSecret"

    .line 712
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numInterrupt"

    .line 713
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithBigText"

    .line 714
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithBigPicture"

    .line 715
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numForegroundService"

    .line 716
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numUserInitiatedJob"

    .line 717
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numOngoing"

    .line 718
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numAutoCancel"

    .line 719
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithLargeIcon"

    .line 720
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithInbox"

    .line 721
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithMediaSession"

    .line 722
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithTitle"

    .line 723
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithText"

    .line 724
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithSubText"

    .line 725
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numWithInfoText"

    .line 726
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numRateViolations"

    .line 727
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numQuotaLViolations"

    .line 728
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "notificationEnqueueRate"

    .line 729
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V

    const-string/jumbo v2, "numAlertViolations"

    .line 730
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string/jumbo v2, "numImagesRemoved"

    .line 731
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 732
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 733
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 734
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    return-object v1
.end method

.method public emit()V
    .locals 3

    .line 510
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 511
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_enqueued"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 512
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_post"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 513
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_update"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 514
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_remove"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 515
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_people"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 516
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_stars"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 517
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_hit"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 518
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_miss"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 519
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_blocked"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 520
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_suspended"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 521
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_actions"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 522
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_private"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 523
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_secret"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 524
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_interupt"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 525
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 526
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_pic"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 527
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_fg"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 528
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_uij"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 529
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_ongoing"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 530
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_auto"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 531
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_large_icon"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 532
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_inbox"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 533
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_media"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 534
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_title"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 535
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 536
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_sub_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 537
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_info_text"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 538
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_rate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 539
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_alert_rate"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 540
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_quota"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 541
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_images_removed"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 542
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 543
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 544
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 546
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 547
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 548
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 549
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 550
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 551
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 552
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 553
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 554
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 555
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 556
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 557
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 558
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 559
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 560
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 561
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 562
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 563
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 564
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 565
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 566
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 567
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 568
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 569
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 570
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 571
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 572
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 573
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 574
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 575
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 576
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 577
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 578
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 579
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    return-void
.end method

.method public getEnqueueRate()F
    .locals 2

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result p0

    return p0
.end method

.method public getEnqueueRate(J)F
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getRate(J)F

    move-result p0

    return p0
.end method

.method public getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-object p0
.end method

.method public isAlertRateLimited()Z
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/AlertRateLimiter;->shouldRateLimitAlert(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    :cond_0
    return v0
.end method

.method public maybeCount(Ljava/lang/String;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 584
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .locals 4

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    .line 747
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public final maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    if-lez p3, :cond_0

    .line 741
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "key=\'"

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "numEnqueuedByApp="

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPostedByApp="

    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numUpdatedByApp="

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numRemovedByApp="

    .line 631
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPeopleCacheHit="

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithStaredPeople="

    .line 635
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithValidPeople="

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPeopleCacheMiss="

    .line 639
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numBlocked="

    .line 641
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numSuspendedByAdmin="

    .line 643
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithActions="

    .line 645
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPrivate="

    .line 647
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numSecret="

    .line 649
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numInterrupt="

    .line 651
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithBigText="

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "numWithBigPicture="

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numForegroundService="

    .line 657
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numUserInitiatedJob="

    .line 659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numOngoing="

    .line 661
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numAutoCancel="

    .line 663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithLargeIcon="

    .line 665
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithInbox="

    .line 667
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithMediaSession="

    .line 669
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithTitle="

    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithText="

    .line 673
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithSubText="

    .line 675
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithInfoText="

    .line 677
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numRateViolations="

    .line 679
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numAlertViolations="

    .line 681
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numQuotaViolations="

    .line 683
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numImagesRemoved="

    .line 685
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "numUndecorateRVs="

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateInterarrivalEstimate(J)V
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->update(J)F

    return-void
.end method
