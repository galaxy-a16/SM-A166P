.class public Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;,
        Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_EXPIRED_ERROR:Ljava/lang/String; = "SAC_0402"

.field private static final KMX_CLIENT_ID:Ljava/lang/String; = "f1gxtygekn"

.field private static final REQUEST_ID:I = 0x64

.field private static final SAMSUNG_ACCOUNT_ACTION_REQUEST:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_SERVICE"

.field private static final SAMSUNG_ACCOUNT_PKG_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "KMX|SamsungAccountManager"

.field private static sInstance:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;


# instance fields
.field private mISaService:Lcom/msc/sa/aidl/f;

.field private mNeedSaSignInActivity:Z

.field private mReTry:Z

.field private mRegisterCode:Ljava/lang/String;

.field private mRequestCompleteListener:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;

.field private mSACallback:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

.field private mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private sIsSALocked:Z

.field private sLockForSA:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sLockForSA:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sIsSALocked:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->lambda$initData$2(Landroid/content/Context;)V

    return-void
.end method

.method private availableSA(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->isInstalledPkg(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "KMX|SamsungAccountManager"

    const-string p1, "SamsungAccountManager is not installed."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->lambda$handleComplete$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->lambda$handleStart$0(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mNeedSaSignInActivity:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/msc/sa/aidl/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->handleComplete(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sInstance:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sInstance:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sInstance:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSaClientId()Ljava/lang/String;
    .locals 1

    const-string v0, "f1gxtygekn"

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestSaGuid(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private handleComplete(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/kmxservice/common/samsungaccount/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/a;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleStart(Landroid/content/Context;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroidx/emoji2/text/n;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    new-instance v1, Lcom/samsung/android/kmxservice/common/samsungaccount/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/a;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSACallback:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    new-instance v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private isInstalledPkg(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "KMX|SamsungAccountManager"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.osp.app.signin"

    const/16 v1, 0x4000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string p1, "SA package is installed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "SA package is not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleComplete$1(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getRegionMcc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "handleComplete : saGuid = {0} saToken = {1} mcc = {2} regionMcc = {3}"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|SamsungAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->cleanUp(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRequestCompleteListener:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-interface {p1, v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;->onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRequestCompleteListener:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;

    goto :goto_0

    :cond_0
    const-string p1, "Samsung Account details retrieved but no observer found"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->notifySA()V

    return-void
.end method

.method private synthetic lambda$handleStart$0(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->waitForSA()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRequestCompleteListener:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->startSAService(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$initData$2(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->handleComplete(Landroid/content/Context;)V

    return-void
.end method

.method private registerSaCallback()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSACallback:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    check-cast v0, Lcom/msc/sa/aidl/d;

    invoke-virtual {v0, v1}, Lcom/msc/sa/aidl/d;->a(Lcom/msc/sa/aidl/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mISaService.registerCallback. registerCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|SamsungAccountManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSACallback:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    check-cast v0, Lcom/msc/sa/aidl/d;

    invoke-virtual {v0, p0}, Lcom/msc/sa/aidl/d;->a(Lcom/msc/sa/aidl/c;)Ljava/lang/String;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "mISaService.registerCallback again. new registerCode = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private requestAccessToken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->isSaSignedIn(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "KMX|SamsungAccountManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "region_mcc"

    const-string v3, "user_id"

    const-string v4, "mcc"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "additional"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mReTry:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    if-eqz v2, :cond_0

    const-string v2, "expired token and retry"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "expired_access_token"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/msc/sa/aidl/d;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.msc.sa.aidl.ISAService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/msc/sa/aidl/d;->c:Landroid/os/IBinder;

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    sget p0, Lcom/msc/sa/aidl/e;->c:I

    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    move v1, p2

    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_3
    const-string p0, "accountArr = 0, result = false"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v1
.end method

.method private requestSaGuid(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "KMX|SamsungAccountManager"

    const-string v1, "SA access token request : "

    const-string v2, "SA register code : "

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->registerSaCallback()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRegisterCode:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRegisterCode:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRegisterCode:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestAccessToken(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mISaService.requestAccessToken : Exception = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private startSAService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "startSAService()"

    const-string v1, "KMX|SamsungAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->initData(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "bindService mRequestID = 100"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to bind to SamsungAccountManager service. : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->handleComplete(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private unbindConnection(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context.unbindService error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KMX|SamsungAccountManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private unregisterCallback()V
    .locals 6

    const-string v0, "KMX|SamsungAccountManager"

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "unregisterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mRegisterCode:Ljava/lang/String;

    check-cast v1, Lcom/msc/sa/aidl/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "com.msc.sa.aidl.ISAService"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/msc/sa/aidl/d;->c:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/msc/sa/aidl/e;->c:I

    :cond_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mISaService.unregisterCallback error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mISaService:Lcom/msc/sa/aidl/f;

    return-void
.end method


# virtual methods
.method public cleanUp(Landroid/content/Context;)V
    .locals 2

    const-string v0, "KMX|SamsungAccountManager"

    const-string v1, "SA cleanup : unregister callback, unbind connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->unregisterCallback()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->unbindConnection(Landroid/content/Context;)V

    return-void
.end method

.method public confirmPassword(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    const-string p0, "resultReceiver"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "kmx_client_id"

    const-string p2, "f1gxtygekn"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "request_code"

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getSaGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSaSignedIn(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.osp.app.signin"

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifySA()V
    .locals 3

    const-string v0, "KMX|SamsungAccountManager"

    const-string v1, "notifySA()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sLockForSA:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sIsSALocked:Z

    if-eqz v1, :cond_0

    const-string v1, "KMX|SamsungAccountManager"

    const-string v2, "notifying"

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/common/tool/Logger;->logWithTrace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sLockForSA:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sIsSALocked:Z

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

.method public declared-synchronized requestSAService(Landroid/content/Context;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "KMX|SamsungAccountManager"

    const-string v1, "requestSAService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mNeedSaSignInActivity:Z

    iput-boolean p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mReTry:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->availableSA(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->handleStart(Landroid/content/Context;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->mSamsungAccountToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-interface {p4, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;->onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForSA()V
    .locals 4

    const-string v0, "KMX|SamsungAccountManager"

    const-string v1, "waitForSA()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sLockForSA:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sIsSALocked:Z

    if-eqz v1, :cond_0

    const-string v1, "KMX|SamsungAccountManager"

    const-string v2, "waiting"

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/common/tool/Logger;->logWithTrace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sLockForSA:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->sIsSALocked:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "KMX|SamsungAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
