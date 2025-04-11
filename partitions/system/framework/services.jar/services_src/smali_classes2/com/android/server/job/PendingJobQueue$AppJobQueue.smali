.class public final Lcom/android/server/job/PendingJobQueue$AppJobQueue;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# static fields
.field public static final mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

.field public static final sJobComparator:Ljava/util/Comparator;


# instance fields
.field public mCurIndex:I

.field public final mJobs:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$9TwzHS0cvBgvyEI_2mJb97eKjRI(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->lambda$static$0(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 261
    new-instance v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    .line 311
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>()V

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 266
    iget-object p1, p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne p0, p1, :cond_1

    return v0

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq v0, v1, :cond_2

    .line 275
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    .line 279
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    .line 286
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    return v2

    .line 293
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 295
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 299
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 303
    :cond_7
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v0, v1, :cond_8

    .line 305
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 308
    :cond_8
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    .line 318
    sget-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus-IA;)V

    .line 322
    :cond_0
    iget-wide v1, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 323
    iput-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 325
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_1

    not-int p1, p1

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 330
    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge p1, v1, :cond_2

    .line 333
    iput p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_2
    if-lez p1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v1, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 338
    iget-wide v3, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 339
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_5

    :goto_0
    if-ge p1, v1, :cond_5

    .line 345
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 346
    iget-wide v3, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v5, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_4

    goto :goto_1

    .line 350
    :cond_4
    iput-wide v3, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 7

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7fffffff

    :goto_0
    if-ltz v0, :cond_3

    .line 359
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 361
    sget-object v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v4, :cond_0

    .line 363
    new-instance v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>(Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus-IA;)V

    .line 365
    :cond_0
    iget-wide v5, v3, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 366
    iput-object v3, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 368
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_1

    not-int v3, v3

    .line 372
    :cond_1
    iget-object v5, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 373
    iget v4, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge v3, v4, :cond_2

    .line 376
    iput v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 378
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 381
    :cond_3
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 382
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 384
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 385
    iget-wide v3, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v5, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 386
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final indexOf(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 406
    iget-object v2, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public next()Lcom/android/server/job/controllers/JobStatus;
    .locals 3

    .line 415
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public peekNextOverrideState()I
    .locals 2

    .line 422
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    return p0
.end method

.method public peekNextTimestamp()J
    .locals 2

    .line 429
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    return-wide v0
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 442
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->clear()V

    .line 443
    sget-object v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 444
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 445
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_1
    return v1
.end method

.method public resetIterator(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 466
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 468
    iget-wide v3, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    cmp-long v0, v3, p1

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    move v0, v2

    goto :goto_0

    .line 476
    :cond_3
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void

    .line 456
    :cond_4
    :goto_1
    iput v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method

.method public size()I
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
