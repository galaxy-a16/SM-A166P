.class public Lcom/samsung/android/battauthmanager/BattAuthManager;
.super Ljava/lang/Object;
.source "BattAuthManager.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BattAuthManager"

    const-string v1, "BattAuthManager start"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/BattAuthManager;->initWpcAuthenticator()V

    return-void
.end method


# virtual methods
.method public final initWpcAuthenticator()V
    .locals 5

    const-string v0, "BattAuthManager"

    .line 24
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirstBoot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v2, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    if-nez v2, :cond_0

    .line 28
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 29
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->removeDigests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "BattAuthManager error"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
