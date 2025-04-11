.class public final Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
.super Ljava/lang/Object;
.source "BackgroundJobsController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mActiveState:I

.field public final mChangedJobs:Landroid/util/ArraySet;

.field public mCheckedCount:I

.field public mTotalCount:I

.field public mUpdateTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 2

    .line 252
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 255
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 256
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    const-wide/16 v0, 0x0

    .line 257
    iput-wide v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 269
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 270
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 271
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-wide v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    iget v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public prepare(I)V
    .locals 2

    .line 260
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    .line 261
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    .line 262
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p1, 0x0

    .line 263
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 264
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    return-void
.end method
