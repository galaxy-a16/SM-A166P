.class public Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
.super Ljava/lang/Object;
.source "MagnificationScaleProvider.java"


# static fields
.field protected static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLock:Ljava/lang/Object;

.field public final mUsersScales:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$CjGhIHFO6D3SdudPIETIrbH6zzc(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->lambda$putScale$0(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static constrainScale(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 137
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$putScale$0(F)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method


# virtual methods
.method public getScale(I)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accessibility_display_magnification_scale"

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getScalesWithCurrentUser()Landroid/util/SparseArray;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserChanged(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putScale(FI)V
    .locals 1

    if-nez p2, :cond_0

    .line 63
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnificationScaleProvider{mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Scale on the default display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "Scales on non-default displays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
