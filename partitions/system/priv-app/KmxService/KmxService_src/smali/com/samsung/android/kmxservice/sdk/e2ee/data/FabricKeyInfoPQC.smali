.class public Lcom/samsung/android/kmxservice/sdk/e2ee/data/FabricKeyInfoPQC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPqcWrappedKey:[B

.field private final mWrappedFabricKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/FabricKeyInfoPQC;->mWrappedFabricKey:[B

    iput-object p2, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/FabricKeyInfoPQC;->mPqcWrappedKey:[B

    return-void
.end method


# virtual methods
.method public getPqcWrappedKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/FabricKeyInfoPQC;->mPqcWrappedKey:[B

    return-object p0
.end method

.method public getWrappedFabricKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/FabricKeyInfoPQC;->mWrappedFabricKey:[B

    return-object p0
.end method
