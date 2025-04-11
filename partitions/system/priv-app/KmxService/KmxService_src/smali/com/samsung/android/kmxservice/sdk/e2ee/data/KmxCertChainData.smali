.class public Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mCertChain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public setCertChain([Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method
