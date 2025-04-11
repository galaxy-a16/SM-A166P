.class public Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
.super Ljava/lang/Object;
.source "SimpleSurfaceAnimatable.java"


# instance fields
.field public mAnimationLeashFactory:Ljava/util/function/Supplier;

.field public mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public mHeight:I

.field public mOnAnimationFinished:Ljava/util/function/Consumer;

.field public mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

.field public mOnAnimationLeashLost:Ljava/util/function/Consumer;

.field public mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public mPendingTransactionSupplier:Ljava/util/function/Supplier;

.field public mShouldDeferAnimationFinish:Z

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSyncTransactionSupplier:Ljava/util/function/Supplier;

.field public mWidth:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationLeashFactory(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationLeashParent(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommitTransactionRunnable(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationFinished(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationLeashCreated(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAnimationLeashLost(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParentSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldDeferAnimationFinish(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControl(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Landroid/view/SurfaceControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncTransactionSupplier(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 146
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mShouldDeferAnimationFinish:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 155
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 159
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashCreated:Ljava/util/function/BiConsumer;

    .line 163
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationLeashLost:Ljava/util/function/Consumer;

    .line 166
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mOnAnimationFinished:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;Lcom/android/server/wm/SimpleSurfaceAnimatable-IA;)V

    return-object v0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "mSurfaceControl cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mCommitTransactionRunnable cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mAnimationLeashFactory cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mPendingTransactionSupplier cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "mSyncTransactionSupplier cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 291
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    return-object p0
.end method

.method public setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public setSyncTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 0

    .line 281
    iput p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    return-object p0
.end method
