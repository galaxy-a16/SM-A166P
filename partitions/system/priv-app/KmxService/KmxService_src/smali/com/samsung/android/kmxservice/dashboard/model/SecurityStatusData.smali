.class public Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeviceType:Ljava/lang/String;

.field mIntegrity:Z

.field mIsSynced:Z

.field mMarketingName:Ljava/lang/String;

.field mModelCode:Ljava/lang/String;

.field mOemDisallowed:Z

.field mOemLocked:Z

.field mSecureStatus:I

.field mTrustLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mModelCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mMarketingName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mDeviceType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mIsSynced:Z

    iput-object p5, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mTrustLevel:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mSecureStatus:I

    iput-boolean p7, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mIntegrity:Z

    iput-boolean p8, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mOemLocked:Z

    iput-boolean p9, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mOemDisallowed:Z

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mMarketingName:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSecureStatus()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mSecureStatus:I

    return p0
.end method

.method public getTrustLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mTrustLevel:Ljava/lang/String;

    return-object p0
.end method

.method public isIntegrity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mIntegrity:Z

    return p0
.end method

.method public isIsSynced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mIsSynced:Z

    return p0
.end method

.method public isOemDisallowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mOemDisallowed:Z

    return p0
.end method

.method public isOemLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mOemLocked:Z

    return p0
.end method

.method public setMarketingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->mMarketingName:Ljava/lang/String;

    return-void
.end method
