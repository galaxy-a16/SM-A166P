.class public Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAppId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "a"
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "b"
    .end annotation
.end field

.field private final mServiceId:[Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "d"
    .end annotation
.end field

.field private final mSignature:[Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mSignature:[Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mServiceId:[Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mServiceId:[Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mSignature:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mSignature:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "\","

    const-string v6, "\""

    if-ge v4, v2, :cond_0

    aget-object v7, v1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mServiceId:[Ljava/lang/String;

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v7, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",signature="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",serviceId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
