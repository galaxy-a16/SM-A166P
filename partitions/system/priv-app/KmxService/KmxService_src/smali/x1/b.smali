.class public abstract Lx1/b;
.super Lx1/c;
.source "SourceFile"


# static fields
.field public static final Y:Lcom/fasterxml/jackson/core/util/g;


# instance fields
.field public A:Lcom/fasterxml/jackson/core/JsonToken;

.field public final B:Lcom/fasterxml/jackson/core/util/j;

.field public C:[C

.field public E:Z

.field public F:Lcom/fasterxml/jackson/core/util/c;

.field public G:[B

.field public H:I

.field public I:I

.field public K:J

.field public L:F

.field public N:D

.field public O:Ljava/math/BigInteger;

.field public P:Ljava/math/BigDecimal;

.field public Q:Ljava/lang/String;

.field public R:Z

.field public T:I

.field public V:I

.field public X:I

.field public final m:Lcom/fasterxml/jackson/core/io/d;

.field public n:Z

.field public p:I

.field public q:I

.field public t:J

.field public u:I

.field public v:I

.field public w:J

.field public x:I

.field public y:I

.field public z:Lc2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/g;->b:Lcom/fasterxml/jackson/core/util/g;

    sput-object v0, Lx1/b;->Y:Lcom/fasterxml/jackson/core/util/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;I)V
    .locals 6

    invoke-direct {p0, p2}, Lx1/c;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v0, p0, Lx1/b;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iput-object p1, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    new-instance v0, Lcom/fasterxml/jackson/core/util/j;

    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/util/j;-><init>(Lcom/fasterxml/jackson/core/util/a;)V

    iput-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lva/e;

    invoke-direct {p1, p0}, Lva/e;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    new-instance p1, Lc2/c;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lc2/c;-><init>(Lc2/c;Lva/e;III)V

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    return-void
.end method

.method public static Z1([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected padding character (\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\') as character #"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDefined(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Illegal character \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p2, p1

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' (code 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Illegal character (code 0x"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") in base64 content"

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-eqz p3, :cond_4

    const-string p1, ": "

    invoke-static {p0, p1, p3}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final A0()F
    .locals 4

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_6

    const/16 v1, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_6

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lx1/b;->K:J

    long-to-float v0, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    iget v0, p0, Lx1/b;->I:I

    int-to-float v0, v0

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lx1/b;->N:D

    double-to-float v0, v2

    :goto_0
    iput v0, p0, Lx1/b;->L:F

    iget v0, p0, Lx1/b;->H:I

    or-int/2addr v0, v1

    iput v0, p0, Lx1/b;->H:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_1
    iget p0, p0, Lx1/b;->L:F

    return p0
.end method

.method public final B0()I
    .locals 2

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx1/b;->S1()I

    move-result p0

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_1
    iget p0, p0, Lx1/b;->I:I

    return p0
.end method

.method public final C0()J
    .locals 8

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_8

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    iget v0, p0, Lx1/b;->I:I

    int-to-long v2, v0

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lx1/c;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_2

    sget-object v2, Lx1/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v3

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_5

    iget-wide v4, p0, Lx1/b;->N:D

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_4

    double-to-long v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v3

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Lx1/c;->i:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gtz v2, :cond_6

    sget-object v2, Lx1/c;->j:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lx1/b;->K:J

    iget v0, p0, Lx1/b;->H:I

    or-int/2addr v0, v1

    iput v0, p0, Lx1/b;->H:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lx1/c;->G1()V

    throw v3

    :cond_7
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v3

    :cond_8
    :goto_1
    iget-wide v0, p0, Lx1/b;->K:J

    return-wide v0
.end method

.method public final D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 2

    iget v0, p0, Lx1/b;->H:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx1/b;->T1(I)V

    :cond_0
    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iget p0, p0, Lx1/b;->H:I

    if-ne v0, v1, :cond_3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_4
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_5

    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0

    :cond_5
    sget-object p0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object p0
.end method

.method public final E0()Ljava/lang/Number;
    .locals 3

    iget v0, p0, Lx1/b;->H:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx1/b;->T1(I)V

    :cond_0
    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget p0, p0, Lx1/b;->I:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-wide v0, p0, Lx1/b;->K:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :cond_4
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    iget p0, p0, Lx1/b;->L:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lx1/b;->N:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2
.end method

.method public final F0()Ljava/lang/Number;
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lx1/b;->H:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget p0, p0, Lx1/b;->I:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-wide v0, p0, Lx1/b;->K:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :cond_4
    iget v0, p0, Lx1/b;->H:I

    if-nez v0, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lx1/b;->T1(I)V

    :cond_5
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_7

    iget p0, p0, Lx1/b;->L:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_7
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lx1/b;->N:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2
.end method

.method public final H()Ljava/math/BigInteger;
    .locals 4

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    const/4 v1, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_5

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lx1/b;->K:J

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    iget v0, p0, Lx1/b;->I:I

    int-to-long v2, v0

    :goto_0
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lx1/b;->N:D

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lx1/b;->O:Ljava/math/BigInteger;

    iget v0, p0, Lx1/b;->H:I

    or-int/2addr v0, v1

    iput v0, p0, Lx1/b;->H:I

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final H0()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    return-object p0
.end method

.method public final I1(II)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget-object p2, p1, Lc2/c;->d:Lva/e;

    if-nez p2, :cond_0

    new-instance p2, Lva/e;

    invoke-direct {p2, p0}, Lva/e;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p1, Lc2/c;->d:Lva/e;

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    :cond_1
    return-void
.end method

.method public abstract J1()V
.end method

.method public final K1()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/d;->a:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public final L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I
    .locals 2

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->N1()C

    move-result p0

    const/16 p2, 0x20

    if-gt p0, p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result p2

    if-gez p2, :cond_2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p3, v1}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return p2

    :cond_3
    invoke-static {p1, p2, p3, v1}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I
    .locals 2

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->N1()C

    move-result p0

    const/16 p2, 0x20

    if-gt p0, p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result p2

    if-gez p2, :cond_2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p3, v1}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return p2

    :cond_3
    invoke-static {p1, p2, p3, v1}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public abstract N1()C
.end method

.method public final O1()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lx1/b;->P:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lx1/b;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/io/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->P:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->Q:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get BigDecimal from current parser state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final P1()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lx1/b;->O:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lx1/b;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/g;->c(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->O:Ljava/math/BigInteger;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->Q:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get BigInteger from current parser state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q1()Lcom/fasterxml/jackson/core/util/c;
    .locals 2

    iget-object v0, p0, Lx1/b;->F:Lcom/fasterxml/jackson/core/util/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/core/util/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/c;-><init>(Lcom/fasterxml/jackson/core/util/a;)V

    iput-object v0, p0, Lx1/b;->F:Lcom/fasterxml/jackson/core/util/c;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->t()V

    :goto_0
    iget-object p0, p0, Lx1/b;->F:Lcom/fasterxml/jackson/core/util/c;

    return-object p0
.end method

.method public final R1(C)V
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized character escape "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lx1/c;->p1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final S1()I
    .locals 3

    iget-boolean v0, p0, Lx1/b;->n:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lx1/b;->T:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-boolean v1, p0, Lx1/b;->R:Z

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/j;->g(Z)I

    move-result v0

    iput v0, p0, Lx1/b;->I:I

    iput v2, p0, Lx1/b;->H:I

    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lx1/b;->T1(I)V

    iget v0, p0, Lx1/b;->H:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_1
    iget p0, p0, Lx1/b;->I:I

    return p0

    :cond_2
    const-string v0, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final T1(I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-boolean v2, v1, Lx1/b;->n:Z

    if-nez v2, :cond_18

    iget-object v2, v1, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v6, ")"

    const-string v7, "Malformed numeric value ("

    const/16 v8, 0x20

    iget-object v9, v1, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v2, v3, :cond_14

    iget v2, v1, Lx1/b;->T:I

    const/16 v3, 0x9

    const/4 v10, 0x1

    if-gt v2, v3, :cond_0

    iget-boolean v0, v1, Lx1/b;->R:Z

    invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/core/util/j;->g(Z)I

    move-result v0

    iput v0, v1, Lx1/b;->I:I

    iput v10, v1, Lx1/b;->H:I

    return-void

    :cond_0
    const/16 v3, 0x12

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-gt v2, v3, :cond_6

    iget-boolean v0, v1, Lx1/b;->R:Z

    iget v3, v9, Lcom/fasterxml/jackson/core/util/j;->c:I

    if-ltz v3, :cond_2

    iget-object v4, v9, Lcom/fasterxml/jackson/core/util/j;->b:[C

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    add-int/2addr v3, v10

    iget v0, v9, Lcom/fasterxml/jackson/core/util/j;->d:I

    sub-int/2addr v0, v10

    invoke-static {v3, v4, v0}, Lcom/fasterxml/jackson/core/io/g;->h(I[CI)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget v0, v9, Lcom/fasterxml/jackson/core/util/j;->d:I

    invoke-static {v3, v4, v0}, Lcom/fasterxml/jackson/core/io/g;->h(I[CI)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v3, v9, Lcom/fasterxml/jackson/core/util/j;->i:I

    sub-int/2addr v3, v10

    invoke-static {v10, v0, v3}, Lcom/fasterxml/jackson/core/io/g;->h(I[CI)J

    move-result-wide v3

    :goto_0
    neg-long v3, v3

    goto :goto_1

    :cond_3
    iget-object v0, v9, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v3, v9, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-static {v12, v0, v3}, Lcom/fasterxml/jackson/core/io/g;->h(I[CI)J

    move-result-wide v3

    :goto_1
    const/16 v0, 0xa

    if-ne v2, v0, :cond_5

    iget-boolean v0, v1, Lx1/b;->R:Z

    if-eqz v0, :cond_4

    const-wide/32 v5, -0x80000000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    long-to-int v0, v3

    iput v0, v1, Lx1/b;->I:I

    iput v10, v1, Lx1/b;->H:I

    return-void

    :cond_4
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    long-to-int v0, v3

    iput v0, v1, Lx1/b;->I:I

    iput v10, v1, Lx1/b;->H:I

    return-void

    :cond_5
    iput-wide v3, v1, Lx1/b;->K:J

    iput v11, v1, Lx1/b;->H:I

    return-void

    :cond_6
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget v3, v1, Lx1/b;->T:I

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object v13

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result v9

    iget-boolean v14, v1, Lx1/b;->R:Z

    if-eqz v14, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    if-eqz v14, :cond_8

    sget-object v14, Lcom/fasterxml/jackson/core/io/g;->a:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget-object v14, Lcom/fasterxml/jackson/core/io/g;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v3, v15, :cond_9

    goto :goto_4

    :cond_9
    if-le v3, v15, :cond_a

    goto :goto_5

    :cond_a
    move v3, v12

    :goto_3
    if-ge v3, v15, :cond_c

    add-int v16, v9, v3

    aget-char v16, v13, v16

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sub-int v16, v16, v17

    if-eqz v16, :cond_b

    if-gez v16, :cond_d

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    move v12, v10

    :cond_d
    :goto_5
    if-eqz v12, :cond_e

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lx1/b;->K:J

    move v5, v11

    goto :goto_7

    :cond_e
    if-eq v0, v10, :cond_12

    if-ne v0, v11, :cond_f

    goto :goto_9

    :cond_f
    if-eq v0, v5, :cond_11

    if-ne v0, v8, :cond_10

    goto :goto_6

    :cond_10
    iput-object v4, v1, Lx1/b;->O:Ljava/math/BigInteger;

    iput-object v2, v1, Lx1/b;->Q:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, v1, Lx1/b;->H:I

    goto :goto_8

    :cond_11
    :goto_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->USE_FAST_DOUBLE_PARSER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/fasterxml/jackson/core/io/g;->d(Ljava/lang/String;Z)D

    move-result-wide v3

    iput-wide v3, v1, Lx1/b;->N:D

    :goto_7
    iput v5, v1, Lx1/b;->H:I

    :goto_8
    return-void

    :cond_12
    :goto_9
    if-ne v0, v10, :cond_13

    iget-object v0, v1, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2, v0}, Lx1/c;->F1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v4

    :cond_13
    invoke-virtual {v1, v2}, Lx1/c;->H1(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lx1/c;->s1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {v3, v1, v2, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_17

    const/16 v2, 0x10

    if-ne v0, v2, :cond_15

    :try_start_1
    iput-object v4, v1, Lx1/b;->P:Ljava/math/BigDecimal;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lx1/b;->Q:Ljava/lang/String;

    move v8, v2

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_15
    if-ne v0, v8, :cond_16

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->USE_FAST_DOUBLE_PARSER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fasterxml/jackson/core/io/g;->e(Ljava/lang/String;Z)F

    move-result v0

    iput v0, v1, Lx1/b;->L:F

    :goto_a
    iput v8, v1, Lx1/b;->H:I

    goto :goto_b

    :cond_16
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->USE_FAST_DOUBLE_PARSER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fasterxml/jackson/core/io/g;->d(Ljava/lang/String;Z)D

    move-result-wide v2

    iput-wide v2, v1, Lx1/b;->N:D

    iput v5, v1, Lx1/b;->H:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_b
    return-void

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx1/c;->s1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {v3, v1, v2, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_17
    const-string v0, "Current token (%s) not numeric, can not use numeric value accessors"

    invoke-virtual {v1, v2, v0}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_18
    const-string v0, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public U0()Z
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lx1/b;->E:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public U1()V
    .locals 4

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->p()V

    iget-object v0, p0, Lx1/b;->C:[C

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->C:[C

    iget-object p0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    if-eq v0, v2, :cond_1

    array-length v3, v0

    array-length v2, v2

    if-lt v3, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer smaller than original"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final V1(CI)V
    .locals 8

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v3

    const-wide/16 v4, -0x1

    new-instance p1, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v6, v0, Lc2/c;->h:I

    iget v7, v0, Lc2/c;->i:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final W1(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    int-to-char p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal unquoted character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lx1/c;->p1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final X1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "(JSON String, Number (or \'NaN\'/\'INF\'/\'+INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    return-object p0

    :cond_0
    const-string p0, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    return-object p0
.end method

.method public final Y1()V
    .locals 6

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lx1/b;->K:J

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    iput v3, p0, Lx1/b;->I:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lx1/c;->F1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lx1/c;->e:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lx1/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lx1/b;->I:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5

    iget-wide v0, p0, Lx1/b;->N:D

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_4

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_4

    double-to-int v0, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lx1/c;->k:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_6

    sget-object v1, Lx1/c;->l:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lx1/b;->H:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->H:I

    return-void

    :cond_6
    invoke-virtual {p0}, Lx1/c;->E1()V

    throw v2

    :cond_7
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2
.end method

.method public final b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->s(Ljava/lang/String;)V

    iput-wide p2, p0, Lx1/b;->N:D

    const/16 p1, 0x8

    iput p1, p0, Lx1/b;->H:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final c1()Z
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lx1/b;->N:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final c2(IIIZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    iput-boolean p4, p0, Lx1/b;->R:Z

    iput p1, p0, Lx1/b;->T:I

    iput p2, p0, Lx1/b;->V:I

    iput p3, p0, Lx1/b;->X:I

    const/4 p1, 0x0

    iput p1, p0, Lx1/b;->H:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lx1/b;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lx1/b;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->n:Z

    :try_start_0
    invoke-virtual {p0}, Lx1/b;->J1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lx1/b;->U1()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lx1/b;->U1()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    iput-boolean p2, p0, Lx1/b;->R:Z

    iput p1, p0, Lx1/b;->T:I

    const/4 p1, 0x0

    iput p1, p0, Lx1/b;->V:I

    iput p1, p0, Lx1/b;->X:I

    iput p1, p0, Lx1/b;->H:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->c:Lc2/c;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lc2/c;->f:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final h1(II)V
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p0, p1, p2}, Lx1/b;->I1(II)V

    :cond_0
    return-void
.end method

.method public final k1(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iput-object p1, p0, Lc2/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public final l1(I)Lcom/fasterxml/jackson/core/g;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p0, p1, v0}, Lx1/b;->I1(II)V

    :cond_0
    return-object p0
.end method

.method public final q1()V
    .locals 9

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, -0x1

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v6, v0, Lc2/c;->h:I

    iget v7, v0, Lc2/c;->i:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V

    const/4 v0, 0x1

    aput-object v8, v1, v0

    const-string v0, ": expected close marker for %s (start marker at %s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final x0()Ljava/math/BigDecimal;
    .locals 4

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_5

    const/16 v1, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_5

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/io/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lx1/b;->K:J

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lx1/b;->I:I

    int-to-long v2, v0

    :goto_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lx1/b;->P:Ljava/math/BigDecimal;

    iget v0, p0, Lx1/b;->H:I

    or-int/2addr v0, v1

    iput v0, p0, Lx1/b;->H:I

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final y0()D
    .locals 4

    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_6

    const/16 v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx1/b;->T1(I)V

    :cond_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lx1/b;->O1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lx1/b;->P1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lx1/b;->K:J

    long-to-double v2, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    iget v0, p0, Lx1/b;->I:I

    int-to-double v2, v0

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget v0, p0, Lx1/b;->L:F

    float-to-double v2, v0

    :goto_0
    iput-wide v2, p0, Lx1/b;->N:D

    iget v0, p0, Lx1/b;->H:I

    or-int/2addr v0, v1

    iput v0, p0, Lx1/b;->H:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_1
    iget-wide v0, p0, Lx1/b;->N:D

    return-wide v0
.end method

.method public final z(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, p1, Lc2/c;->d:Lva/e;

    if-nez v0, :cond_0

    new-instance v0, Lva/e;

    invoke-direct {v0, p0}, Lva/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lc2/c;->d:Lva/e;

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    :cond_0
    return-void
.end method
