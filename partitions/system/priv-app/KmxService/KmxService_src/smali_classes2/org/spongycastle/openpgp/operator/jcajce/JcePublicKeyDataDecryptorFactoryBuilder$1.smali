.class Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

.field final synthetic val$privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;->val$privKey:Ljava/security/PrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p0

    return-object p0
.end method

.method public recoverSessionData(I[[B)[B
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;->val$privKey:Ljava/security/PrivateKey;

    invoke-static {v0, p1, p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "ECDH requires use of PGPPrivateKey for decryption"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
