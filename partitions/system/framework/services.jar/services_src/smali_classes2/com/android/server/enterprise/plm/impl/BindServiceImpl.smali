.class public Lcom/android/server/enterprise/plm/impl/BindServiceImpl;
.super Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;
.source "BindServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BindServiceImpl"


# instance fields
.field public mAliveEvent:I

.field public mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

.field public mDeathEvent:I

.field public mObserver:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAliveEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mAliveEvent:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mDeathEvent:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clearConnectionHelper()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    :cond_0
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;-><init>(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    return-object p0
.end method

.method public getProcessId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->getProcessId()I

    move-result p0

    return p0
.end method

.method public isAlive()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->isConnected()Z

    move-result p0

    return p0
.end method

.method public needToCleanUpOnConditionNotMet()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToCleanUpOnConditionNotMet()Z

    move-result p0

    return p0
.end method

.method public needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerObserver(Landroid/os/Handler;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mAliveEvent:I

    iput p3, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mDeathEvent:I

    return-void
.end method

.method public start()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/plm/common/Utils;->hasService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->bindService()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->clearConnectionHelper()V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterObserver(Landroid/os/Handler;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    return-void
.end method
