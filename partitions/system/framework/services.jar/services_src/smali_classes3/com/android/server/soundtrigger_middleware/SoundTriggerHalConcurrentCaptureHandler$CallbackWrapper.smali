.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerHalConcurrentCaptureHandler.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public final mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;


# direct methods
.method public static synthetic $r8$lambda$Byvrc-EhidEgjANKV9DdIoWsJBc(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->lambda$modelUnloaded$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NTv4tNTqxqXffAdGrpKwRlmeM2s(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->lambda$recognitionCallback$0(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDWWyG9lSI8fYHkuq2C7wbu_WOo(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->lambda$phraseRecognitionCallback$1(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    return-void
.end method

.method private synthetic lambda$modelUnloaded$2(I)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    return-void
.end method

.method private synthetic lambda$phraseRecognitionCallback$1(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    return-void
.end method

.method private synthetic lambda$recognitionCallback$0(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->mDelegateCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    return-void
.end method


# virtual methods
.method public modelUnloaded(I)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmCallbackThread(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    monitor-exit v0

    return-void

    .line 264
    :cond_0
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v1, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmCallbackThread(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)Z

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_0
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->-$$Nest$fgetmCallbackThread(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)Z

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
