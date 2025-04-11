.class Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openssl/PEMEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->build([C)Lorg/spongycastle/openssl/PEMEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

.field final synthetic val$iv:[B

.field final synthetic val$password:[C


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;[B[C)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    iput-object p2, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    iput-object p3, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {v1}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$100(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Lorg/spongycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    iget-object v3, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$password:[C

    iget-object v2, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {v2}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/openssl/jcajce/PEMUtilities;->crypt(ZLorg/spongycastle/jcajce/util/JcaJceHelper;[B[CLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {p0}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIV()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    return-object p0
.end method
