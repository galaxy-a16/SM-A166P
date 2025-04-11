.class Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field final synthetic val$c:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;Ljavax/crypto/Cipher;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper$1;->val$c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 0

    new-instance p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    return-object p0
.end method
