.class public final Lcom/fasterxml/jackson/databind/util/z;
.super Lcom/fasterxml/jackson/core/f;
.source "SourceFile"


# static fields
.field public static final q:I


# instance fields
.field public final b:Lcom/fasterxml/jackson/core/j;

.field public final c:Lcom/fasterxml/jackson/core/i;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public final i:Lcom/fasterxml/jackson/databind/util/y;

.field public j:Lcom/fasterxml/jackson/databind/util/y;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Z

.field public p:Lc2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/util/z;->q:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->O()Lcom/fasterxml/jackson/core/j;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->b:Lcom/fasterxml/jackson/core/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H0()Lcom/fasterxml/jackson/core/i;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->c:Lcom/fasterxml/jackson/core/i;

    sget v1, Lcom/fasterxml/jackson/databind/util/z;->q:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    .line 1
    new-instance v1, Lc2/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lc2/d;-><init>(ILc2/d;Lva/e;)V

    .line 2
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/j;)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->b:Lcom/fasterxml/jackson/core/j;

    sget p1, Lcom/fasterxml/jackson/databind/util/z;->q:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    .line 3
    new-instance p1, Lc2/d;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lc2/d;-><init>(ILc2/d;Lva/e;)V

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    new-instance p1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->f1(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-void
.end method

.method public final B0(D)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final C0(F)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final D0(I)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final E0(J)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final G0(Ljava/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final H0(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final I0(S)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final J0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    return-void
.end method

.method public final K0(C)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L0(Lcom/fasterxml/jackson/core/l;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final N0([CI)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1

    new-array p1, p4, [B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/u;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final Q0()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->j()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final R0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final S0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->k(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final T0()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->l()Lc2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final U0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->m(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final V0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->e1(Lcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->m(Ljava/lang/Object;)Lc2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-void
.end method

.method public final W0(I[CI)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p1, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final X0(Lcom/fasterxml/jackson/core/l;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final Z0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    return-void
.end method

.method public final b0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->f1(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-void
.end method

.method public final c1(Ljava/lang/Object;)V
    .locals 10

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v4, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    if-ge v4, v3, :cond_1

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    if-lez v4, :cond_0

    shl-int/lit8 p1, v4, 0x2

    shl-long/2addr v2, p1

    :cond_0
    iget-wide v8, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v2, v8

    iput-wide v2, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v3, p1

    iget-wide v8, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v3, v8

    iput-wide v3, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v1, v2, v6, v7}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v4, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ge v4, v3, :cond_4

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    if-lez v4, :cond_3

    shl-int/lit8 p1, v4, 0x2

    shl-long/2addr v2, p1

    :cond_3
    iget-wide v4, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    iget-wide v4, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    :goto_0
    const/4 p1, 0x1

    if-nez v1, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_1
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    return p0
.end method

.method public final d1(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/y;->c(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    if-eqz v0, :cond_0

    const-string v2, "[objectId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/lit8 p0, p0, -0x1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/util/y;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v0, "[typeId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final e1(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 8

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    if-lez v1, :cond_0

    shl-int/lit8 p1, v1, 0x2

    shl-long/2addr v4, p1

    :cond_0
    iget-wide v6, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    iget-wide v6, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/y;->a(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/y;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_1
    return-void
.end method

.method public final f1(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    if-lez v1, :cond_0

    shl-int/lit8 p1, v1, 0x2

    shl-long/2addr v4, p1

    :cond_0
    iget-wide v6, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    iget-wide v6, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/y;->a(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/y;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_1
    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0}, Lc2/d;->o()I

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v4, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    if-ge v4, v3, :cond_1

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    if-lez v4, :cond_0

    shl-int/lit8 v2, v4, 0x2

    shl-long/2addr p1, v2

    :cond_0
    iget-wide v2, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr p1, v2

    iput-wide p1, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    iget-wide v3, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr p1, v3

    iput-wide p1, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    invoke-virtual {v1, v2, v5, v6}, Lcom/fasterxml/jackson/databind/util/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v4, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    if-ge v4, v3, :cond_4

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    if-lez v4, :cond_3

    shl-int/lit8 v2, v4, 0x2

    shl-long/2addr p1, v2

    :cond_3
    iget-wide v2, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr p1, v2

    iput-wide p1, v0, Lcom/fasterxml/jackson/databind/util/y;->b:J

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/y;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/y;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/util/y;->c:[Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    iget-wide v2, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    or-long/2addr p1, v2

    iput-wide p1, v1, Lcom/fasterxml/jackson/databind/util/y;->b:J

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/util/y;->a:Lcom/fasterxml/jackson/databind/util/y;

    :goto_0
    const/4 p1, 0x1

    if-nez v1, :cond_5

    iget p2, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_1
    return-void
.end method

.method public final h0(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final h1(Lcom/fasterxml/jackson/core/g;)V
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->P0()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->l:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->G0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/z;->m:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/z;->n:Z

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    return p0
.end method

.method public final i1(Lcom/fasterxml/jackson/core/g;)V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v3, Lcom/fasterxml/jackson/databind/util/w;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/util/z;->j1(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/core/JsonToken;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/util/z;->z0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->w0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->Q0()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->x0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    :cond_7
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->T0()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final j1(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/w;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Internal error: unexpected token: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->b0(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/z;->b0(Z)V

    goto :goto_0

    :pswitch_4
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/z;->h:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->G0(Ljava/math/BigDecimal;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->F0()Ljava/lang/Number;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    sget-object p2, Lcom/fasterxml/jackson/databind/util/w;->b:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->C0()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/z;->E0(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->H0(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->D0(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->U0()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->L0()[C

    move-result-object p2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->N0()I

    move-result v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->M0()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/fasterxml/jackson/databind/util/z;->W0(I[CI)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->Y0(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k1(Lcom/fasterxml/jackson/databind/util/z;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/z;->l1()Lcom/fasterxml/jackson/databind/util/x;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->n1(Lcom/fasterxml/jackson/core/g;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final l1()Lcom/fasterxml/jackson/databind/util/x;
    .locals 7

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/z;->b:Lcom/fasterxml/jackson/core/j;

    new-instance v6, Lcom/fasterxml/jackson/databind/util/x;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/z;->c:Lcom/fasterxml/jackson/core/i;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/x;-><init>(Lcom/fasterxml/jackson/databind/util/y;Lcom/fasterxml/jackson/core/j;ZZLcom/fasterxml/jackson/core/i;)V

    return-object v6
.end method

.method public final m1(Lcom/fasterxml/jackson/core/g;)Lcom/fasterxml/jackson/databind/util/x;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/util/x;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->i:Lcom/fasterxml/jackson/databind/util/y;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->O()Lcom/fasterxml/jackson/core/j;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/z;->c:Lcom/fasterxml/jackson/core/i;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/x;-><init>(Lcom/fasterxml/jackson/databind/util/y;Lcom/fasterxml/jackson/core/j;ZZLcom/fasterxml/jackson/core/i;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->O0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    iput-object p0, v6, Lcom/fasterxml/jackson/databind/util/x;->x:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v6
.end method

.method public final n1(Lcom/fasterxml/jackson/core/g;)V
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->z0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/databind/util/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/z;->j1(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/core/JsonToken;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->w0()V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->Q0()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->x0()V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/z;->g:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->h1(Lcom/fasterxml/jackson/core/g;)V

    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->T0()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->i1(Lcom/fasterxml/jackson/core/g;)V

    :goto_2
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No token available from argument `JsonParser`"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const-string v0, "[TokenBuffer: "

    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->l1()Lcom/fasterxml/jackson/databind/util/x;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/z;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/z;->f:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/x;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x64

    if-nez v4, :cond_3

    if-lt v2, v5, :cond_2

    const-string p0, " ... (truncated "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " entries)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/z;->d1(Ljava/lang/StringBuilder;)V

    :cond_4
    if-ge v2, v5, :cond_6

    if-lez v2, :cond_5

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/x;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final w0()V
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/util/y;->a(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/y;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    iget-object v0, v0, Lc2/d;->c:Lc2/d;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    :cond_1
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/z;->A0()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-eq v0, v1, :cond_3

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/u;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->b:Lcom/fasterxml/jackson/core/j;

    if-nez v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/j;->writeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/z;->g1(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public final x()Lc2/d;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    return-object p0
.end method

.method public final x0()V
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/util/y;->a(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/y;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->j:Lcom/fasterxml/jackson/databind/util/y;

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/z;->k:I

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    iget-object v0, v0, Lc2/d;->c:Lc2/d;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    :cond_1
    return-void
.end method

.method public final y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y0(Lcom/fasterxml/jackson/core/l;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc2/d;->n(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->c1(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(II)Lcom/fasterxml/jackson/core/f;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/z;->d:I

    return-object p0
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/z;->p:Lc2/d;

    invoke-virtual {v0, p1}, Lc2/d;->n(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;->c1(Ljava/lang/Object;)V

    return-void
.end method
