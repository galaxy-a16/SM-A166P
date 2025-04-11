.class Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    return-object p0
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 5

    const/4 p0, 0x2

    new-array v0, p0, [Ljava/math/BigInteger;

    array-length v1, p1

    div-int/2addr v1, p0

    new-array v2, v1, [B

    array-length v3, p1

    div-int/2addr v3, p0

    new-array p0, v3, [B

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object p1, v0, v4

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object p1, v0, v1

    return-object v0
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p0

    array-length p2, p1

    array-length v0, p0

    if-le p2, v0, :cond_0

    array-length p2, p1

    goto :goto_0

    :cond_0
    array-length p2, p0

    :goto_0
    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    array-length v0, p0

    sub-int/2addr p1, v0

    array-length v0, p0

    invoke-static {p0, v2, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
