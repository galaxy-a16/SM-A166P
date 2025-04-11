.class public Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCertificateChain:[Ljava/security/cert/X509Certificate;

.field private final mEncapKey:[B

.field private final mEncapKeySignature:[B

.field private final mMemberKey:[B

.field private final mSignature:[B


# direct methods
.method public constructor <init>([B[B[Ljava/security/cert/X509Certificate;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mMemberKey:[B

    iput-object p2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mSignature:[B

    iput-object p3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mEncapKey:[B

    iput-object p5, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mEncapKeySignature:[B

    return-void
.end method


# virtual methods
.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public getEncapKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mEncapKey:[B

    return-object p0
.end method

.method public getEncapKeySignature()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mEncapKeySignature:[B

    return-object p0
.end method

.method public getMemberKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mMemberKey:[B

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->mSignature:[B

    return-object p0
.end method
