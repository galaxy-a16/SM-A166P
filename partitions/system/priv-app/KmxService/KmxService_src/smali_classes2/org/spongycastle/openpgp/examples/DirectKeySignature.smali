.class public Lorg/spongycastle/openpgp/examples/DirectKeySignature;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object p0, p0, v1

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSignature;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Signature date is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSignatureCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getNotationDataOccurences()[Lorg/spongycastle/bcpg/sig/NotationData;

    move-result-object v0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found Notaion named \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/spongycastle/bcpg/sig/NotationData;->getNotationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' with content \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/spongycastle/bcpg/sig/NotationData;->getNotationValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    new-instance v3, Ljava/io/FileInputStream;

    aget-object v1, p0, v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    aget-object v1, p0, v2

    new-instance v2, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v4}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 v3, 0x3

    aget-object v3, p0, v3

    const/4 v4, 0x4

    aget-object p0, p0, v4

    new-instance v4, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKey()Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, p0}, Lorg/spongycastle/openpgp/examples/DirectKeySignature;->signPublicKey(Lorg/spongycastle/openpgp/PGPSecretKey;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v4, v5, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    new-instance p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "SignedKey.asc"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->flush()V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->close()V

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: DirectKeySignature secretKeyFile secretKeyPass publicKeyFile(key to be signed) NotationName NotationValue"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "or: DirectKeySignature signedPublicKeyFile"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static signPublicKey(Lorg/spongycastle/openpgp/PGPSecretKey;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v1, "SC"

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p0

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    invoke-virtual {v2, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/16 p0, 0x1f

    invoke-virtual {v0, p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    new-instance p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, p3, p4}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->setNotationData(ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
