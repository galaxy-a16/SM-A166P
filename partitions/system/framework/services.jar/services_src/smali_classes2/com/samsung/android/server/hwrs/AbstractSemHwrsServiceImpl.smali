.class public abstract Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;
.super Lcom/samsung/android/hwrs/ISemHwrsManager$Stub;
.source "AbstractSemHwrsServiceImpl.java"


# instance fields
.field public mCurrentUserId:I

.field public final mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$fRtyKbNG360BduqJYaR_GcNZ2Vg(Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->lambda$onUserSwitching$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/hwrs/ISemHwrsManager$Stub;-><init>()V

    const/16 v0, -0x2710

    .line 19
    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    const-string v0, "[HWRS_SYS]SemHwrsService"

    const-string v1, "AbstractSemHwrsServiceImpl entered"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/samsung/android/server/hwrs/common/HwrsUtils;->start()V

    const-string/jumbo v0, "user"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    return-void
.end method

.method private synthetic lambda$onUserSwitching$0(Landroid/os/UserHandle;)V
    .locals 3

    .line 35
    iget v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    const/16 v1, -0x2710

    const-string v2, "[HWRS_SYS]SemHwrsService"

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "stopUser entered"

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->setCurrentUserHandle(Landroid/os/UserHandle;)V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->startUser(Landroid/os/UserHandle;)V

    const-string/jumbo p0, "startUser entered"

    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isCameraShareEnable()Z
    .locals 2

    const-string v0, "[HWRS_SYS]SemHwrsService"

    const-string/jumbo v1, "test call"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->isHWRSEnable()Z

    move-result p0

    return p0
.end method

.method public onUserSwitching(Landroid/os/UserHandle;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/samsung/android/server/hwrs/common/HwrsUtils;->executeOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract setCurrentUserHandle(Landroid/os/UserHandle;)V
.end method
