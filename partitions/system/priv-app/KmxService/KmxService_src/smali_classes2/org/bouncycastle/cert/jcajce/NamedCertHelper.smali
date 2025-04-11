.class Lorg/bouncycastle/cert/jcajce/NamedCertHelper;
.super Lorg/bouncycastle/cert/jcajce/CertHelper;
.source "SourceFile"


# instance fields
.field private final providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/CertHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;->providerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;->providerName:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method
