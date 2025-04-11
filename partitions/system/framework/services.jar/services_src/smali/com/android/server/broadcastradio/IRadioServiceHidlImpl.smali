.class public final Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "IRadioServiceHidlImpl.java"


# instance fields
.field public final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field public final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

.field public final mV1Modules:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    const-string v0, "broadcast radio service cannot be null"

    .line 63
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 64
    new-instance p1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 65
    invoke-virtual {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 66
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 68
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    const-string v0, "Broadcast radio service cannot be null"

    .line 75
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    const-string p1, "Broadcast radio service implementation for HIDL 1 HAL cannot be null"

    .line 76
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    const-string p1, "Broadcast radio service implementation for HIDL 2 HAL cannot be null"

    .line 79
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 2

    const-string v0, "BcRadioSrvHidl"

    const/4 v1, 0x3

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 3

    .line 116
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BcRadioSrvHidl"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding announcement listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Enabled announcement types cannot be null"

    .line 119
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Announcement listener cannot be null"

    .line 120
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 123
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasAnyModules()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "BcRadioSrvHidl"

    const-string v1, "There are no HAL 2.0 modules registered"

    .line 125
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p2, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 135
    iget-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump HIDL BroadcastRadioService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p2, "BroadcastRadioService\n"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    .line 143
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "HAL1: %s\n"

    .line 146
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 149
    iget-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "Modules of HAL1: %s\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    aput-object v2, v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 151
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "HAL2:\n"

    new-array p3, p3, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 156
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 158
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 160
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    .line 151
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public listModules()Ljava/util/List;
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 86
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->listModules()Ljava/util/Collection;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 3

    .line 99
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BcRadioSrvHidl"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    const-string v0, "Callback must not be null"

    .line 103
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasModule(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
