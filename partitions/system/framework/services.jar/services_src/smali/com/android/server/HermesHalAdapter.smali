.class public final Lcom/android/server/HermesHalAdapter;
.super Ljava/lang/Object;
.source "HermesHalAdapter.java"


# instance fields
.field public hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

.field public supportAidlHal:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgethc(Lcom/android/server/HermesHalAdapter;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "hermes_jni"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    return-void
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getSecureHWInfo()[B
.end method

.method private native provisioning()I
.end method

.method private native secnvmPowerOff()I
.end method

.method private native secnvmPowerOn()I
.end method

.method private native selftest()[B
.end method

.method private native terminateService()I
.end method

.method private native updateCryptoFW()[B
.end method

.method private native verifyProvisioning()I
.end method


# virtual methods
.method public GetSecureHWInfo()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "GetSecureHWInfo called."

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_1

    .line 105
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->getSecureHWInfo()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    .line 106
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getSecureHWInfo()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Provisioning()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "Provisioning called."

    .line 160
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_1

    .line 164
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->provisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->provisioning()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public SecnvmPowerOn()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "SecnvmPowerOn called!."

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_1

    .line 217
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->secnvmPowerOn()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->secnvmPowerOn()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public Selftest()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "Selftest called."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 141
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->selftest()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object v1

    .line 144
    iget v1, v1, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-eqz v1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->selftest()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    return-object v0

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->selftest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public TerminateService()I
    .locals 3

    const-string v0, "TerminateService called."

    const-string v1, "HERMES#HalAdapter"

    .line 192
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/HermesHalAdapter;->hasAccessPermissionForTerm(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TerminateService denied."

    .line 194
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 199
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_2

    .line 201
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->terminateService()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->terminateService()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public UpdateCryptoFW()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "UpdateCryptoFW called."

    .line 118
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v1, :cond_1

    .line 121
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_2

    .line 122
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->getSecureHWInfo()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    .line 123
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-eqz v1, :cond_0

    .line 124
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    return-object v0

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->updateCryptoFW()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public VerifyProvisioning()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "VerifyProvisioning called."

    .line 176
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_1

    .line 180
    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->verifyProvisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->verifyProvisioning()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getBigdataLog()Ljava/lang/String;
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "getBigdataLog called!."

    .line 246
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz p0, :cond_1

    .line 250
    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->getBigdataLog()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    const-string v1, "euc-kr"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getPdpData()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    .locals 4

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "vendor.samsung.hardware.security.hermes.ISehHermesCommand/default"

    .line 71
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-nez v1, :cond_0

    const-string v1, "HERMES#HalAdapter"

    const-string v2, "getService: halService is null"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    const-string v1, "HERMES#HalAdapter"

    const-string v2, "get HermesHAL"

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    new-instance v1, Lcom/android/server/HermesHalAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/HermesHalAdapter$1;-><init>(Lcom/android/server/HermesHalAdapter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :try_start_4
    iget-object v2, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v1, "HERMES#HalAdapter"

    const-string v2, "getService:linkToDeath"

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    .line 95
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/HermesHalAdapter;->supportAidlHal:Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v1

    .line 78
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    .line 97
    :cond_1
    :goto_0
    :try_start_7
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasAccessPermissionForTerm(II)Z
    .locals 0

    const-string p0, "HERMES#HalAdapter"

    const-string p1, "hasAccessPermissionForTerm start."

    .line 264
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e8

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
