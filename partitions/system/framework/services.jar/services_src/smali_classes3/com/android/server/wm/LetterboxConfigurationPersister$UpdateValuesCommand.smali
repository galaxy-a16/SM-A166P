.class public Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;
.super Ljava/lang/Object;
.source "LetterboxConfigurationPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mBookModeReachability:I

.field public final mFileToUpdate:Landroid/util/AtomicFile;

.field public final mHorizontalReachability:I

.field public final mOnComplete:Ljava/util/function/Consumer;

.field public final mTabletopModeReachability:I

.field public final mVerticalReachability:I


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 315
    iput p2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    .line 316
    iput p3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    .line 317
    iput p4, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    .line 318
    iput p5, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    .line 319
    iput-object p6, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    const-string v0, "UpdateValuesCommand"

    .line 324
    new-instance v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    .line 326
    iget v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 327
    iget v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 328
    iget v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 330
    iget v2, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 332
    invoke-static {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 337
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 346
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 340
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v2, "WindowManager"

    const-string v3, "Error writing to LetterboxConfigurationPersister. Using default values!"

    .line 341
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 346
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 348
    :cond_1
    throw v1
.end method
