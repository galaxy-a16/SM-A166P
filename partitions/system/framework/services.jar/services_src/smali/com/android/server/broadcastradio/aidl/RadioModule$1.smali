.class public Lcom/android/server/broadcastradio/aidl/RadioModule$1;
.super Landroid/hardware/broadcastradio/ITunerCallback$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;


# direct methods
.method public static synthetic $r8$lambda$4a-22vITs1MfuwG80g_kC7XvioQ(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onProgramListUpdated$4(Landroid/hardware/broadcastradio/ProgramListChunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5VQxNyfmfPiWqMxg0XM_UFUzthg(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onAntennaStateChange$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRn8BKZjwKtjcJKECBOmnTL95zs(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramSelector;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onTuneFailed$1(Landroid/hardware/broadcastradio/ProgramSelector;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJKVuTMmjD1IBf0TmTBmGVeqx_g(Lcom/android/server/broadcastradio/aidl/RadioModule$1;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onConfigFlagUpdated$8(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbShUEQJlfeCYaF5yHyHgMY36jY(ZLandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onAntennaStateChange$5(ZLandroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtJMN2cXrHP9FgyXFjwH9HkGhkw(IZLandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onConfigFlagUpdated$7(IZLandroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q225id_fpXwPzA0pxzEz-IqF3Mo(Lcom/android/server/broadcastradio/aidl/RadioModule$1;[Landroid/hardware/broadcastradio/VendorKeyValue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onParametersUpdated$10([Landroid/hardware/broadcastradio/VendorKeyValue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$akAxWKlmCYxMS3PIPGrYZ7eALDY(Landroid/hardware/radio/ProgramSelector;ILandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onTuneFailed$0(Landroid/hardware/radio/ProgramSelector;ILandroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fGv3b3NFGbXnjm4Cv2EnhNiNzyI(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gYfh3fmvVZkUOfmMpIhSGTp5I_c(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onParametersUpdated$9(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhsjv67Bu8u2T6QmrqhX7cWWYlM(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->lambda$onCurrentProgramInfoChanged$3(Landroid/hardware/broadcastradio/ProgramInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/ITunerCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAntennaStateChange$5(ZLandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 161
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic lambda$onAntennaStateChange$6(Z)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fputmAntennaConnected(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Boolean;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$onConfigFlagUpdated$7(IZLandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 171
    invoke-interface {p2, p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigFlagUpdated(IZ)V

    return-void
.end method

.method private synthetic lambda$onConfigFlagUpdated$8(IZ)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda8;-><init>(IZ)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 129
    invoke-static {p0, p2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "BcRadioAidlSrv.module"

    const-string/jumbo p1, "onCurrentProgramInfoChanged: cannot send program info requiring higher target SDK version"

    .line 131
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method private synthetic lambda$onCurrentProgramInfoChanged$3(Landroid/hardware/broadcastradio/ProgramInfo;)V
    .locals 2

    .line 123
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    const-string v0, "Program info from AIDL HAL is invalid"

    .line 124
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fputmCurrentProgramInfo(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onParametersUpdated$10([Landroid/hardware/broadcastradio/VendorKeyValue;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p1

    .line 183
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$onParametersUpdated$9(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 184
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onProgramListUpdated$4(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->chunkFromHalProgramListChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object p1

    .line 147
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmProgramInfoCache(Lcom/android/server/broadcastradio/aidl/RadioModule;)Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/aidl/RadioModule;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/aidl/RadioModule;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {v2, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->onMergedProgramListUpdateFromHal(Landroid/hardware/radio/ProgramList$Chunk;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
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

.method public static synthetic lambda$onTuneFailed$0(Landroid/hardware/radio/ProgramSelector;ILandroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 108
    invoke-static {p0, p3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, "BcRadioAidlSrv.module"

    const-string/jumbo p1, "onTuneFailed: cannot send program selector requiring higher target SDK version"

    .line 109
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_0
    invoke-interface {p2, p1, p0}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method private synthetic lambda$onTuneFailed$1(Landroid/hardware/broadcastradio/ProgramSelector;I)V
    .locals 2

    .line 103
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    .line 104
    invoke-static {p2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->halResultToTunerResult(I)I

    move-result p2

    .line 105
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/radio/ProgramSelector;I)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule;Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "3c864ddf392d28cfbf95849bedf0b753b81cc013"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onAntennaStateChange(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigFlagUpdated(IZ)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;IZ)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/ProgramInfo;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramInfo;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onParametersUpdated([Landroid/hardware/broadcastradio/VendorKeyValue;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;[Landroid/hardware/broadcastradio/VendorKeyValue;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramListChunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/ProgramSelector;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramSelector;I)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/aidl/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method
