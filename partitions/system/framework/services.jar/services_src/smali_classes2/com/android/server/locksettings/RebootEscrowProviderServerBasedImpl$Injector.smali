.class public Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowProviderServerBasedImpl.java"


# instance fields
.field public mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;


# direct methods
.method public static bridge synthetic -$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceConnection()Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 59
    new-instance v0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->getServiceConnection()Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    if-nez p1, :cond_0

    const-string p0, "RebootEscrowProviderServerBased"

    const-string p1, "Failed to resolve resume on reboot server service."

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getServerBlobLifetimeInMillis()J
    .locals 3

    const-string/jumbo p0, "server_based_server_blob_lifetime_in_millis"

    const-wide/32 v0, 0x927c0

    const-string/jumbo v2, "ota"

    .line 81
    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getServiceConnection()Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    return-object p0
.end method

.method public getServiceTimeoutInSeconds()J
    .locals 3

    const-string/jumbo p0, "server_based_service_timeout_in_seconds"

    const-wide/16 v0, 0xa

    const-string/jumbo v2, "ota"

    .line 75
    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
