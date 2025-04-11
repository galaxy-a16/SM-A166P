.class Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method private createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->e(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create cipher: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->e(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createStreamCipher(IZ)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;

    invoke-direct {p1, p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "Exception creating cipher"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public createDigest(I)Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method public createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    return-object p0
.end method

.method public createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    return-object p0
.end method

.method public createKeyWrapper(I)Ljavax/crypto/Cipher;
    .locals 2

    const-string v0, "unknown wrap algorithm: "

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const-string p1, "CamelliaWrap"

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const-string p1, "AESWrap"

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create cipher: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->e(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public createPublicKeyCipher(I)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "unknown asymmetric algorithm: "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "Can\'t use ECDSA for encryption."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "Can\'t use DSA for encryption."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string p1, "ElGamal/ECB/PKCS1Padding"

    goto :goto_1

    :cond_4
    const-string p1, "RSA/ECB/PKCS1Padding"

    :goto_1
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public createSignature(II)Ljava/security/Signature;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "unknown algorithm tag in signature:"

    .line 1
    invoke-static {p2, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "ECDSA"

    goto :goto_1

    :cond_2
    const-string p1, "DSA"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "ElGamal"

    goto :goto_1

    :cond_4
    const-string p1, "RSA"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/spongycastle/openpgp/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "with"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public createStreamCipher(IZ)Ljavax/crypto/Cipher;
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "CFB"

    goto :goto_0

    :cond_0
    const-string p2, "OpenPGPCFB"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/NoPadding"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method
