.class public Lcom/android/server/companion/transport/CompanionTransportManager;
.super Ljava/lang/Object;
.source "CompanionTransportManager.java"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mMessageListeners:Landroid/util/SparseArray;

.field public mSecureTransportEnabled:Z

.field public final mTransports:Landroid/util/SparseArray;

.field public final mTransportsListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public static synthetic $r8$lambda$Eew_bwx9-LytJNIn--_bfvPuleU(Landroid/companion/IOnTransportsChangedListener;Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljjpMQNvXL4Ur1hXZdfFORKaFwc(Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$notifyOnTransportsChanged$1(Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/AssociationStore;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 68
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    return-void
.end method

.method public static synthetic lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p0, p1}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic lambda$notifyOnTransportsChanged$1(Ljava/util/List;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 182
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
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

.method public addListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 5

    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Registering OnTransportsChangedListener"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 92
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 93
    invoke-interface {v3, v4}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;-><init>(Landroid/companion/IOnTransportsChangedListener;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 99
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V
    .locals 3

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/IOnMessageReceivedListener;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELIVER_COMPANION_MESSAGES"

    const-string v2, "CDM_CompanionTransportManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(Ljava/lang/String;II)V

    :cond_0
    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->initializeTransport(ILandroid/os/ParcelFileDescriptor;[B)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 245
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 246
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 247
    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 251
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public detachSystemDataTransport(Lcom/android/server/companion/transport/Transport;)V
    .locals 2

    .line 293
    iget p1, p1, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 294
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 298
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 296
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public detachSystemDataTransport(Ljava/lang/String;II)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.DELIVER_COMPANION_MESSAGES"

    const-string v0, "CDM_CompanionTransportManager"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter p1

    .line 159
    :try_start_0
    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/transport/Transport;

    if-eqz p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->delete(I)V

    .line 162
    invoke-virtual {p2}, Lcom/android/server/companion/transport/Transport;->stop()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 166
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enableSecureTransport(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    return-void
.end method

.method public final initializeTransport(ILandroid/os/ParcelFileDescriptor;[B)V
    .locals 8

    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Initializing transport"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->isSecureTransportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "CDM_CompanionTransportManager"

    const-string v0, "Secure channel is disabled. Creating raw transport"

    .line 195
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p3, Lcom/android/server/companion/transport/RawTransport;

    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/companion/transport/RawTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "CDM_CompanionTransportManager"

    const-string v0, "Creating an unauthenticated secure channel"

    .line 199
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "CDM"

    .line 200
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 201
    new-instance p3, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Creating a PSK-authenticated secure channel"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v5, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    move-object p3, v0

    goto :goto_0

    :cond_2
    const-string p3, "CDM_CompanionTransportManager"

    const-string v0, "Creating a secure channel"

    .line 208
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance p3, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    .line 212
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 213
    new-instance p2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    invoke-virtual {p3, p2}, Lcom/android/server/companion/transport/Transport;->setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V

    .line 214
    invoke-virtual {p3}, Lcom/android/server/companion/transport/Transport;->start()V

    .line 215
    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter p2

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSecureTransportEnabled()Z
    .locals 1

    .line 281
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final notifyOnTransportsChanged()V
    .locals 5

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 172
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 174
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 173
    invoke-interface {v3, v4}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestPermissionRestore(I[B)Ljava/util/concurrent/Future;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/transport/Transport;

    if-nez p0, :cond_0

    .line 225
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing transport"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const p1, 0x63826983

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->requestForResponse(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendMessage(I[B[I)V
    .locals 4

    const-string v0, "CDM_CompanionTransportManager"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 133
    :goto_0
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    aget v3, p3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    aget v3, p3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->requestForResponse(I[B)Ljava/util/concurrent/Future;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
