.class public Lcom/android/server/trust/TrustManagerService$Injector;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# instance fields
.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Looper;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 286
    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-object p0
.end method
