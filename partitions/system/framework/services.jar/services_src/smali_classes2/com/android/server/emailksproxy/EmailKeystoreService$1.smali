.class public Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile mConnectedAtLeastOnce:Z

.field public final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 315
    iget-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    const-string p1, "EmailKeystoreService"

    const-string v0, "Bind to keychain service happened"

    .line 318
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 322
    :try_start_0
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
