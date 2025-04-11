.class Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;
.super Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputAEADEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSAuthOutputEncryptor"
.end annotation


# instance fields
.field private aeadCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field final synthetic this$0:Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->this$0:Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;-><init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V

    invoke-direct {p0}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->getCipher()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->aeadCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-void
.end method

.method private getCipher()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljava/lang/Object;

    instance-of v0, p0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to create Authenticated Output Encryptor without Authenticaed Data cipher!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;

    iget-object p0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->aeadCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;-><init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->aeadCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getMac()[B

    move-result-object p0

    return-object p0
.end method
