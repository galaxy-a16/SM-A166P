.class public Lcom/android/server/audio/DefaultAudioPolicyFacade;
.super Ljava/lang/Object;
.source "DefaultAudioPolicyFacade.java"

# interfaces
.implements Lcom/android/server/audio/AudioPolicyFacade;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAudioPolicy:Landroid/media/IAudioPolicyService;

.field public final mServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceLock:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/DefaultAudioPolicyFacade;->getAudioPolicyOrInit()Landroid/media/IAudioPolicyService;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DefaultAudioPolicyFacade"

    const-string v1, "Failed to initialize APM connection"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const-string p0, "DefaultAudioPolicyFacade"

    const-string v0, "Unexpected binderDied without IBinder object"

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/DefaultAudioPolicyFacade;->resetServiceConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method public final getAudioPolicyOrInit()Landroid/media/IAudioPolicyService;
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mAudioPolicy:Landroid/media/IAudioPolicyService;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    const-string/jumbo v1, "media.audio_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mAudioPolicy:Landroid/media/IAudioPolicyService;

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DefaultAudioPolicyFacade: Unable to link deathListener to AudioPolicy"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "DefaultAudioPolicyFacade: Unable to connect to AudioPolicy"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public isHotwordStreamSupported(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/DefaultAudioPolicyFacade;->getAudioPolicyOrInit()Landroid/media/IAudioPolicyService;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/media/IAudioPolicyService;->isHotwordStreamSupported(Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    invoke-interface {v0}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/DefaultAudioPolicyFacade;->resetServiceConnection(Landroid/os/IBinder;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final resetServiceConnection(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mAudioPolicy:Landroid/media/IAudioPolicyService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mAudioPolicy:Landroid/media/IAudioPolicyService;

    invoke-interface {p1}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mAudioPolicy:Landroid/media/IAudioPolicyService;

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
