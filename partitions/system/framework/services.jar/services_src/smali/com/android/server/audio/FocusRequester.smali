.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mCallingUid:I

.field public final mClientId:Ljava/lang/String;

.field public mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field public mDevice:I

.field public final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public final mFocusGainRequest:I

.field public mFocusLossFadeLimbo:Z

.field public mFocusLossReceived:I

.field public mFocusLossWasNotified:Z

.field public final mGrantFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSdkTarget:I

.field public final mSourceRef:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 556
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 101
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 102
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 103
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 104
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 106
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 107
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 108
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 109
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 110
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 113
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 114
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 556
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 119
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 120
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 123
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 124
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 127
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 128
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 130
    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 131
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 132
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 133
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    return-void
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DELAY_OK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v1, p0, 0x4

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static focusChangeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    :pswitch_2
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    :pswitch_3
    const-string p0, "GAIN"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "none"

    return-object p0

    :pswitch_5
    const-string p0, "LOSS"

    return-object p0

    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchFocusChange(I)I
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "MediaFocusControl"

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    .line 506
    :cond_2
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v2, p1, :cond_3

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus gain was requested with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dispatching "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x3

    if-eq p1, v2, :cond_4

    const/4 v2, -0x2

    if-eq p1, v2, :cond_4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 516
    :cond_4
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 519
    :cond_5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFocusChange: error talking to focus listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public dispatchFocusResultFromExtPolicy(I)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaFocusControl"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 247
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- notified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- limbo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- sdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 282
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final focusGainToString()Ljava/lang/String;
    .locals 0

    .line 219
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {p0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final focusLossForGainRequest(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 294
    :cond_0
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    if-eqz v0, :cond_8

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_7

    .line 312
    :cond_2
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p0, v1, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_3

    if-eqz p0, :cond_5

    .line 322
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaFocusControl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v1

    :cond_6
    return v3

    :cond_7
    return v2

    :cond_8
    return v3
.end method

.method public final focusLossToString()Ljava/lang/String;
    .locals 0

    .line 223
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {p0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 4

    .line 447
    iget v0, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    const-string/jumbo p1, "not ducking uid "

    const-string v0, "MediaFocusControl"

    if-nez p3, :cond_1

    .line 459
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - flags"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p3, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v1

    const/16 v3, 0x19

    if-gt v1, v3, :cond_2

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - old SDK"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 473
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/audio/MediaFocusControl;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    return p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public getClientUid()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    return p0
.end method

.method public getDevice()I
    .locals 0

    .line 563
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    return p0
.end method

.method public getGainRequest()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    return p0
.end method

.method public getGrantFlags()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkTarget()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return p0
.end method

.method public handleFocusGain(I)V
    .locals 3

    const/4 v0, 0x0

    .line 351
    :try_start_0
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 352
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 353
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_0

    .line 361
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaFocusControl"

    const-string v0, "Failure to signal gain of audio focus due to: "

    .line 367
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public handleFocusGainFromRequest(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 374
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    :cond_0
    return-void
.end method

.method public handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 3

    .line 382
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v0, :cond_3

    .line 383
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 391
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 400
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p0

    .line 399
    invoke-virtual {p1, p0, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 407
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 415
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 416
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p0

    .line 415
    invoke-virtual {p1, p0, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz p1, :cond_3

    .line 426
    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 427
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p3

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p2, p3, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 428
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 429
    iget p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MediaFocusControl"

    const-string p2, "Failure to signal loss of audio focus due to:"

    .line 433
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 3

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->isDelayLossApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "com.android.bluetooth"

    .line 339
    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.mcfds"

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->postDelayedForLossAudioFocus(Lcom/android/server/audio/FocusRequester;)V

    const/4 p1, -0x2

    .line 344
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameBinder(Landroid/os/IBinder;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameClient(Ljava/lang/String;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSamePackage(Ljava/lang/String;)Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameUid(I)Z
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInFocusLossLimbo()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    return p0
.end method

.method public isLockedFocusOwner()Z
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeRelease()V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 269
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 272
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 276
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    return-void
.end method

.method public resetFocusLossReceived()V
    .locals 1

    const/4 v0, 0x0

    .line 559
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    return-void
.end method

.method public setDevice(I)V
    .locals 0

    .line 567
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    return-void
.end method

.method public toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .locals 10

    .line 547
    new-instance v9, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method
