.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

.field public final mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

.field public final mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

.field public mIsDead:Z

.field public mIsResourceContended:Z

.field public final mLock:Ljava/lang/Object;

.field public mModelKeyCounter:I

.field public final mModelSessionMap:Ljava/util/Map;

.field public final mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method public static synthetic $r8$lambda$-pElKzYOZqIOQMGm_ZkZTOsON4w(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$unloadSoundModel$4(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhG9O2Y1qv_U1YOMsnctXvtUVR0(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$loadPhraseSoundModel$2(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TjQ2otGr4IoNEo73GNpulKqQmaU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$loadSoundModel$1(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJpAJBQVEmZH42olwa-oCzpEZt4(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$startRecognition$5(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5spu3J0d7S-4DWSLu4fRl5W04Y(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$new$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jz4HNyxwn8H_vde6pK8qrbAzo4w(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$stopRecognition$6(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mSBVSDmSnGweLYybtUkFfsQmIbY(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$unloadSoundModel$3(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$opi9nCZSJK3LIGDDwd7FY9IgNDw(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$setParameter$7(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjectionDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModelSessionMap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProperties(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/media/soundtrigger/Properties;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetNumLoadedModelsLocked(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smcreateDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    const/16 v2, 0x65

    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    invoke-direct {v1, p1, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher-IA;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    invoke-static {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    const/16 p0, 0x32

    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    const/16 p0, 0xc8

    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    new-array v1, p0, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    return-object v0
.end method

.method public static createDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 2

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    new-instance v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v1}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    new-array p0, v0, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    return-object v1
.end method

.method public static createDefaultProperties()Landroid/media/soundtrigger/Properties;
    .locals 3

    new-instance v0, Landroid/media/soundtrigger/Properties;

    invoke-direct {v0}, Landroid/media/soundtrigger/Properties;-><init>()V

    const-string v1, "android"

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    const-string v1, "AOSP fake STHAL"

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/soundtrigger/Properties;->version:I

    const-string v2, "00000001-0002-0003-0004-deadbeefabcd"

    iput-object v2, v0, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    const-string v2, "injection"

    iput-object v2, v0, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    const/16 v2, 0x8

    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    const/4 v2, 0x2

    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxUsers:I

    const/16 v2, 0x9

    iput v2, v0, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    const/16 v2, 0x1388

    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    iput v1, v0, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    return-object v0
.end method

.method private synthetic lambda$loadPhraseSoundModel$2(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    iget-object v0, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p3, v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method private synthetic lambda$loadSoundModel$1(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p3, p1, v0, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public static synthetic lambda$setParameter$7(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic lambda$startRecognition$5(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p3, v0, p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic lambda$stopRecognition$6(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    return-void
.end method

.method public static synthetic lambda$unloadSoundModel$3(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic lambda$unloadSoundModel$4(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 0

    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void
.end method


# virtual methods
.method public forceRecognitionEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    const-string p1, "FakeSoundTriggerHal"

    const-string v1, "Attempted to force recognition with invalid handle"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetRecogSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mforceRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGlobalEventInjection()Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p0, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "7d8d63478cd50e766d2072140c8aa3457f9fb585"

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInterfaceVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNumLoadedModelsLocked()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getParameter(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    const-string p1, "FakeSoundTriggerHal"

    const-string v1, "Attempted to get param with invalid handle"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/soundtrigger/Properties;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/media/soundtrigger/Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/soundtrigger/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    const-string v0, "FakeSoundTriggerHal"

    const-string v1, "Received two death recipients concurrently"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v2, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    const/4 v3, 0x0

    invoke-direct {v6, p2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher-IA;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;ZLcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession-IA;)V

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    monitor-exit v0

    return v1

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v2, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    const/4 v3, 0x0

    invoke-direct {v6, p2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher-IA;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;ZLcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession-IA;)V

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p2, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    monitor-exit v0

    return v1

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    const-string p0, "FakeSoundTriggerHal"

    const-string p1, "Attempted to get param with invalid handle"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    new-instance p0, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {p0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    const/16 p1, -0xa

    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    const/16 p1, 0xa

    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher-IA;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setParameter(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to get param with invalid handle"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    const/16 v1, -0xa

    if-lt p3, v1, :cond_1

    const/16 v1, 0xa

    if-gt p3, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$msetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;-><init>(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    monitor-exit v0

    return-void

    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    const-string p3, "FakeSoundTriggerHal"

    const-string v0, "Attempted to start recognition with invalid handle"

    invoke-static {p3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    const/4 v0, 0x1

    if-nez p3, :cond_2

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mstartRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p4, p3, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;-><init>(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    monitor-exit p2

    return-void

    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_2
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopRecognition(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to stop recognition with invalid handle"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mstopRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-eqz v0, :cond_0

    monitor-exit p2

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-exit p2

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unloadSoundModel(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to unload model which was never loaded"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetRecogSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Session unloaded before recog stopped!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v1, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
