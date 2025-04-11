.class public Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPqcCipher:[B

.field private final mWrappedFabricKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->mWrappedFabricKey:[B

    iput-object p2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->mPqcCipher:[B

    return-void
.end method


# virtual methods
.method public getPqcCipher()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->mPqcCipher:[B

    return-object p0
.end method

.method public getWrappedFabricKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->mWrappedFabricKey:[B

    return-object p0
.end method
