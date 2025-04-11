.class public Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "SoundAction.java"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 2

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Sound Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x1040123

    return p0

    :pswitch_1
    const p0, 0x104011b

    return p0

    :pswitch_2
    const p0, 0x104011a

    return p0

    :pswitch_3
    const p0, 0x104012a

    return p0

    :pswitch_4
    const p0, 0x1040124

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x55236e7d -> :sswitch_4
        -0x18e94be7 -> :sswitch_3
        0x1af46ecc -> :sswitch_2
        0x4505db45 -> :sswitch_1
        0x65f68d8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public performCornerAction(I)V
    .locals 7

    .line 65
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_6

    .line 66
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_1
    const/4 v0, 0x5

    const/high16 v6, 0x2000000

    packed-switch p1, :pswitch_data_0

    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Sound Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 88
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v1, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_3

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 70
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_3

    .line 74
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 76
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v1, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_3

    .line 92
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    sub-int/2addr p1, v5

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    move v4, p1

    .line 94
    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_3

    .line 80
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 82
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_6
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55236e7d -> :sswitch_4
        -0x18e94be7 -> :sswitch_3
        0x1af46ecc -> :sswitch_2
        0x4505db45 -> :sswitch_1
        0x65f68d8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
