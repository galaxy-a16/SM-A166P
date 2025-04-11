.class public Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# instance fields
.field public mDevice:I

.field public mRatio:I

.field public mShouldMute:Z

.field public mUid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 1028
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 1029
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    .line 1030
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/4 p1, 0x0

    .line 1031
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return-void
.end method


# virtual methods
.method public getAppDevice()I
    .locals 0

    .line 1043
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return p0
.end method

.method public getAppVolume()I
    .locals 0

    .line 1047
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1035
    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    return p0
.end method

.method public isShouldMute()Z
    .locals 0

    .line 1059
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return p0
.end method

.method public removable()Z
    .locals 2

    .line 1067
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAppDevice(I)V
    .locals 0

    .line 1039
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return-void
.end method

.method public setAppVolume(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void

    :cond_1
    :goto_0
    const-string p0, "AS.MultiSoundManager"

    const-string p1, "Invalid app volume"

    .line 1052
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setShouldMute(Z)V
    .locals 0

    .line 1063
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return-void
.end method
