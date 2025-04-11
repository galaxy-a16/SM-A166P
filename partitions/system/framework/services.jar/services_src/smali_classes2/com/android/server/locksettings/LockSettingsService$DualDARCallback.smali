.class public final Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public static synthetic $r8$lambda$-h_fLOUTgQRjaBG258Sy6ucAWAw(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->lambda$new$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AUvJRDmRWvTVKjcxHKsR163Dh-M(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->lambda$binderDied$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$binderDied$1(Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LockSettingsService.DDAR"

    const-string v1, "Failed to unlink death listener"

    invoke-static {v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LockSettingsService.DDAR"

    const-string v0, "Failed to link death listener..."

    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public binderDied()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-void
.end method

.method public get()Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-object p0
.end method
