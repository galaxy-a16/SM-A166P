.class public Lcom/samsung/android/server/audio/GoodCatchManager;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"


# static fields
.field public static final SOUND_FUNC:[Ljava/lang/String;


# instance fields
.field public mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public final mContext:Landroid/content/Context;

.field public mModule:Ljava/lang/String;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public mSoundFunc:[Z

.field public mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public mVibrationFunc:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSoundFunc(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmVibrationFunc(Lcom/samsung/android/server/audio/GoodCatchManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSOUND_FUNC()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "mediavolume"

    const-string/jumbo v1, "playback"

    const-string/jumbo v2, "ringermode"

    const-string v3, "callmode"

    .line 41
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 44
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 98
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 129
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$2;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v0, "AudioService"

    .line 89
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object v1, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    goto :goto_0

    :cond_0
    const-string v0, "VibratorService"

    .line 92
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 93
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public isCallModeCatchEnabled()Z
    .locals 2

    const-string v0, "AudioService"

    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaVolumeCatchEnabled()Z
    .locals 2

    const-string v0, "AudioService"

    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaybackCatchEnabled()Z
    .locals 2

    const-string v0, "AudioService"

    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRingerModeCatchEnabled()Z
    .locals 2

    const-string v0, "AudioService"

    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aget-boolean p0, p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public isVibrateCatchEnabled()Z
    .locals 2

    const-string v0, "VibratorService"

    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateCallMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateMediaVolume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePlayback(Ljava/lang/String;I)V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, p0, v1

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRingerMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVibrateMode(Ljava/lang/String;)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVibrateMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
