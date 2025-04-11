.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# instance fields
.field public final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    return-void
.end method

.method public static makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 4

    .line 50
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 46
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
