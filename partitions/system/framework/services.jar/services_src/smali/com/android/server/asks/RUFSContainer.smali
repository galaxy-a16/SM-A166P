.class public Lcom/android/server/asks/RUFSContainer;
.super Ljava/lang/Object;
.source "RUFSContainer.java"


# instance fields
.field public mADPCarriers:Ljava/lang/String;

.field public mADPModels:Ljava/lang/String;

.field public mASKSRNEWCarriers:Ljava/lang/String;

.field public mASKSRNEWModels:Ljava/lang/String;

.field public mDigestInToken:Ljava/lang/String;

.field public mHasRUFSToken:Z

.field public mIsDelta:Z

.field public mRUFSpolicyDeltaVersion:Ljava/lang/String;

.field public mRUFSpolicyPath:Ljava/lang/String;

.field public mRUFSpolicyVersion:Ljava/lang/String;

.field public mSizeofFiles:J

.field public mSizeofZip:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADPCarriers()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-object p0
.end method

.method public getADPModels()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-object p0
.end method

.method public getASKSRNEWCarriers()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-object p0
.end method

.method public getASKSRNEWModels()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-object p0
.end method

.method public getDeltaPolicyVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-object p0
.end method

.method public getHasRUFSToken()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return p0
.end method

.method public getIsDelta()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    return p0
.end method

.method public getPolicyPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicyVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSizeofFiles()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-wide v0
.end method

.method public getSizeofzip()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-wide v0
.end method

.method public setADPCarriers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-void
.end method

.method public setADPModels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWCarriers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWModels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-void
.end method

.method public setDeltaPolicyVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-void
.end method

.method public setHasRUFSToken(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return-void
.end method

.method public setIsDelta(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    return-void
.end method

.method public setPolicyVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public setSizeofFiles(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-void
.end method

.method public setSizeofZip(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-void
.end method
