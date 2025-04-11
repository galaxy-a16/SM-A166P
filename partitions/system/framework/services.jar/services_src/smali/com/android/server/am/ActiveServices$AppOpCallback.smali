.class public final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# static fields
.field public static final LOGGED_AP_OPS:[I


# instance fields
.field public final mAcceptedOps:Landroid/util/SparseIntArray;

.field public final mAppOpModes:Landroid/util/SparseIntArray;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCounterLock:Ljava/lang/Object;

.field public mDestroyed:Z

.field public mNumFgs:I

.field public final mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

.field public final mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

.field public final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method public static bridge synthetic -$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCountIfNeeded(III)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3275
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .locals 6

    .line 3317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3285
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 3288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 3292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 3298
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3304
    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 3312
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 3326
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    .line 3335
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 3318
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 3319
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3320
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 3321
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 3322
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static modeToEnum(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final incrementOpCount(IZ)V
    .locals 2

    .line 3356
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 3357
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 3358
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    const/4 v1, 0x1

    if-gez p2, :cond_1

    .line 3360
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 3362
    :cond_1
    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 3364
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final incrementOpCountIfNeeded(III)V
    .locals 1

    .line 3346
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isNotTop()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3347
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCount(IZ)V

    :cond_1
    return-void
.end method

.method public final isNotTop()Z
    .locals 1

    .line 3352
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isObsoleteLocked()Z
    .locals 0

    .line 3394
    iget-boolean p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    return p0
.end method

.method public final logFinalValues()V
    .locals 10

    .line 3398
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3399
    :try_start_0
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v6, v1, v3

    .line 3400
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 3401
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-gtz v8, :cond_0

    if-lez v9, :cond_1

    :cond_0
    const/16 v4, 0x100

    .line 3403
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 3406
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ActiveServices$AppOpCallback;->modeToEnum(I)I

    move-result v7

    .line 3403
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3411
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerLocked()V
    .locals 3

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ActivityManager"

    const-string v0, "Trying to register on a stale AppOpCallback."

    .line 3369
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3372
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-ne v0, v1, :cond_1

    .line 3374
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 3375
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_1
    return-void
.end method

.method public unregisterLocked()V
    .locals 2

    .line 3380
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-gtz v0, :cond_0

    .line 3382
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 3383
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->logFinalValues()V

    .line 3384
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedInternalListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 3385
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_0
    return-void
.end method
