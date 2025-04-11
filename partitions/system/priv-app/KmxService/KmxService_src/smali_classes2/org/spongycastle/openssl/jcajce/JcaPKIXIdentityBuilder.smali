.class public Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

.field private keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    return-void
.end method

.method private checkFile(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to open file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for reading."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to open "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public build(Ljava/io/File;Ljava/io/File;)Lorg/spongycastle/pkix/jcajce/JcaPKIXIdentity;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->checkFile(Ljava/io/File;)V

    invoke-direct {p0, p2}, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->checkFile(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->build(Ljava/io/InputStream;Ljava/io/InputStream;)Lorg/spongycastle/pkix/jcajce/JcaPKIXIdentity;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-object p0
.end method

.method public build(Ljava/io/InputStream;Ljava/io/InputStream;)Lorg/spongycastle/pkix/jcajce/JcaPKIXIdentity;
    .locals 3

    .line 2
    new-instance v0, Lorg/spongycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/spongycastle/openssl/PEMKeyPair;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/openssl/PEMKeyPair;

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {p1}, Lorg/spongycastle/openssl/PEMKeyPair;->getPrivateKeyInfo()Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    check-cast p1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/spongycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    check-cast v1, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v2, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance p0, Lorg/spongycastle/pkix/jcajce/JcaPKIXIdentity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pkix/jcajce/JcaPKIXIdentity;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unrecognised private key file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/spongycastle/openssl/jcajce/JcaPEMKeyConverter;

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    return-object p0
.end method
