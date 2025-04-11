.class public Lcom/android/server/wm/LetterboxConfigurationPersister;
.super Ljava/lang/Object;
.source "LetterboxConfigurationPersister.java"


# static fields
.field static final LETTERBOX_CONFIGURATION_FILENAME:Ljava/lang/String; = "letterbox_config"


# instance fields
.field public final mCompletionCallback:Ljava/util/function/Consumer;

.field public final mConfigurationFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

.field public volatile mLetterboxPositionForBookModeReachability:I

.field public volatile mLetterboxPositionForHorizontalReachability:I

.field public volatile mLetterboxPositionForTabletopModeReachability:I

.field public volatile mLetterboxPositionForVerticalReachability:I

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public static synthetic $r8$lambda$RCdd2vjZQzX0outaKILe0S1yhck(Lcom/android/server/wm/LetterboxConfigurationPersister;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->readCurrentConfiguration()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v7}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/LetterboxConfigurationPersister;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p8, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    new-instance p1, Ljava/io/File;

    const-string p2, "letterbox_config"

    invoke-direct {p1, p6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iput-object p7, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p1, Lcom/android/server/wm/LetterboxConfigurationPersister$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/LetterboxConfigurationPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LetterboxConfigurationPersister;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfigurationPersister;->runWithDiskReadsThreadPolicy(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method public getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    return p0
.end method

.method public getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    return p0
.end method

.method public final readCurrentConfiguration()V
    .locals 5

    const-string v0, "Error reading from LetterboxConfigurationPersister "

    const-string v1, "WindowManager"

    iget-object v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->useDefaultValue()V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/LetterboxConfigurationPersister;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object v3

    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    iput v4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    iput v4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    iput v4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget v3, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    iput v3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Error reading from LetterboxConfigurationPersister. Using default values!"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->useDefaultValue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->useDefaultValue()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->useDefaultValue()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    throw v3
.end method

.method public final runWithDiskReadsThreadPolicy(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public setLetterboxPositionForHorizontalReachability(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->updateConfiguration()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->updateConfiguration()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLetterboxPositionForVerticalReachability(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->updateConfiguration()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfigurationPersister;->updateConfiguration()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    return-void
.end method

.method public final updateConfiguration()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v8, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iget v3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget v4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget v5, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget v6, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    iget-object v7, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;-><init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v8, p0}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public useDefaultValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return-void
.end method
