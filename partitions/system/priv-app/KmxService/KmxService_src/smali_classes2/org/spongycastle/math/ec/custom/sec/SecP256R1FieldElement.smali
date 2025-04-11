.class public Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP256R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->addOne([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->eq([I[I)Z

    move-result p0

    return p0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 0

    const-string p0, "SecP256R1Field"

    return-object p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p0, v1, v2}, Lorg/spongycastle/util/Arrays;->hashCode([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public isOne()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isOne([I)Z

    move-result p0

    return p0
.end method

.method public isZero()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result p0

    return p0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    invoke-static {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/4 v2, 0x4

    invoke-static {v1, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {p0, v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/16 v2, 0x8

    invoke-static {p0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/16 v2, 0x10

    invoke-static {v1, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {p0, v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/16 v2, 0x20

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/16 v2, 0x60

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    const/16 v2, 0x5e

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public testBitZero()Z
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->getBit([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
