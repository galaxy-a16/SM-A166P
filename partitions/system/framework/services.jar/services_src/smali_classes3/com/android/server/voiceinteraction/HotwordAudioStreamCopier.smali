.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;
.super Ljava/lang/Object;
.source "HotwordAudioStreamCopier.java"


# static fields
.field static final DEFAULT_COPY_BUFFER_LENGTH_BYTES:I = 0x8000

.field static final MAX_COPY_BUFFER_LENGTH_BYTES:I = 0x10000


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mDetectorType:I

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mVoiceInteractorAttributionTag:Ljava/lang/String;

.field public final mVoiceInteractorPackageName:Ljava/lang/String;

.field public final mVoiceInteractorUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    return p0
.end method

.method public constructor <init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    const/4 v4, 0x7

    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    move v4, v11

    move v12, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/service/voice/HotwordAudioStream;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aget-object v3, v2, v11

    const/4 v5, 0x1

    aget-object v14, v2, v5

    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/service/voice/HotwordAudioStream$Builder;->setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream$Builder;->build()Landroid/service/voice/HotwordAudioStream;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v3

    add-int v15, v4, v3

    const-string v3, "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const v16, 0x8000

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lt v7, v5, :cond_1

    const/high16 v2, 0x10000

    if-le v7, v2, :cond_3

    :cond_1
    iget v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    const/16 v3, 0x9

    iget v4, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v11, v7

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set an invalid copy buffer length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HotwordAudioStreamCopier"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move/from16 v7, v16

    :cond_3
    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getInitialAudio()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v12, v2

    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    invoke-direct {v3, v2, v14, v7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v15

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotwordDetectedResult@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v10

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;-><init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;->build()Landroid/service/voice/HotwordDetectedResult;

    move-result-object v0

    return-object v0
.end method
