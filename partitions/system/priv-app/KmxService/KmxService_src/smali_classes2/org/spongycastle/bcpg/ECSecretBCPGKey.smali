.class public Lorg/spongycastle/bcpg/ECSecretBCPGKey;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/BCPGKey;


# instance fields
.field x:Lorg/spongycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->x:Lorg/spongycastle/bcpg/MPInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->x:Lorg/spongycastle/bcpg/MPInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->x:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 0

    :try_start_0
    invoke-super {p0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PGP"

    return-object p0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->x:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
