.class Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openssl/PEMDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->get(Ljava/lang/String;)Lorg/spongycastle/openssl/PEMDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

.field final synthetic val$dekAlgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->this$1:Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    iput-object p2, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$dekAlgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->this$1:Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    iget-object v1, v0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->val$password:[C

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, v0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-static {v0}, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;)Lorg/spongycastle/jcajce/util/JcaJceHelper;

    move-result-object v3

    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->this$1:Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    iget-object v5, v0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->val$password:[C

    iget-object v6, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$dekAlgName:Ljava/lang/String;

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/openssl/jcajce/PEMUtilities;->crypt(ZLorg/spongycastle/jcajce/util/JcaJceHelper;[B[CLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openssl/PasswordException;

    const-string p1, "Password is null, but a password is required"

    invoke-direct {p0, p1}, Lorg/spongycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
