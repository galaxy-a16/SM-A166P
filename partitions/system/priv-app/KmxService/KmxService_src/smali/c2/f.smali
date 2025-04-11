.class public final Lc2/f;
.super Lx1/b;
.source "SourceFile"


# static fields
.field public static final A0:I

.field public static final B0:I

.field public static final C0:[I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:I

.field public static final x0:I

.field public static final y0:I

.field public static final z0:I


# instance fields
.field public Z:Ljava/io/Reader;

.field public l0:[C

.field public final m0:Z

.field public final n0:Lcom/fasterxml/jackson/core/j;

.field public final o0:Le2/e;

.field public final p0:I

.field public q0:Z

.field public r0:J

.field public s0:I

.field public t0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->v0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->w0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->x0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->y0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->z0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->A0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/f;->B0:I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->e:[I

    sput-object v0, Lc2/f;->C0:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Le2/e;[CIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc2/f;->Z:Ljava/io/Reader;

    iput-object p3, p0, Lc2/f;->n0:Lcom/fasterxml/jackson/core/j;

    iput-object p5, p0, Lc2/f;->l0:[C

    iput p6, p0, Lx1/b;->p:I

    iput p7, p0, Lx1/b;->q:I

    iput p6, p0, Lx1/b;->v:I

    neg-int p1, p6

    int-to-long p1, p1

    iput-wide p1, p0, Lx1/b;->t:J

    iput-object p4, p0, Lc2/f;->o0:Le2/e;

    .line 1
    iget p1, p4, Le2/e;->c:I

    .line 2
    iput p1, p0, Lc2/f;->p0:I

    iput-boolean p8, p0, Lc2/f;->m0:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/j;Le2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    iput-object p3, p0, Lc2/f;->Z:Ljava/io/Reader;

    .line 3
    iget-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->i:[C

    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Lcom/fasterxml/jackson/core/util/a;->b(II)[C

    move-result-object p2

    .line 5
    iput-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->i:[C

    .line 6
    iput-object p2, p0, Lc2/f;->l0:[C

    iput p3, p0, Lx1/b;->p:I

    iput p3, p0, Lx1/b;->q:I

    iput-object p4, p0, Lc2/f;->n0:Lcom/fasterxml/jackson/core/j;

    iput-object p5, p0, Lc2/f;->o0:Le2/e;

    .line 7
    iget p1, p5, Le2/e;->c:I

    .line 8
    iput p1, p0, Lc2/f;->p0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc2/f;->m0:Z

    return-void
.end method


# virtual methods
.method public final A2()I
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0x20

    if-le v0, v3, :cond_6

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lc2/f;->F2()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_5

    iget v2, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/f;->B0:I

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc2/f;->G2()V

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    if-ge v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_7

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final B2()V
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    :cond_1
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iget v0, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->v:I

    return-void
.end method

.method public final C1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C2()I
    .locals 10

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lc2/f;->l0:[C

    aget-char v2, v1, v0

    const/16 v4, 0x3a

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v2, v4, :cond_8

    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-char v2, v1, v0

    if-le v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v2, v5, :cond_7

    :cond_4
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-char v1, v1, v0

    if-le v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    return v1

    :cond_6
    :goto_1
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_8
    if-eq v2, v8, :cond_9

    if-ne v2, v5, :cond_a

    :cond_9
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-char v2, v1, v0

    :cond_a
    if-ne v2, v4, :cond_10

    iget v0, p0, Lx1/b;->p:I

    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-char v2, v1, v0

    if-le v2, v8, :cond_c

    if-eq v2, v7, :cond_b

    if-ne v2, v6, :cond_1

    :cond_b
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_c
    if-eq v2, v8, :cond_d

    if-ne v2, v5, :cond_f

    :cond_d
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-char v1, v1, v0

    if-le v1, v8, :cond_f

    if-eq v1, v7, :cond_e

    if-ne v1, v6, :cond_5

    :cond_e
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0, v9}, Lc2/f;->D2(Z)I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p0, v3}, Lc2/f;->D2(Z)I

    move-result p0

    return p0
.end method

.method public final D2(Z)I
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " within/between "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/4 v1, 0x1

    const/16 v4, 0x20

    if-le v0, v4, :cond_8

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lc2/f;->F2()V

    goto :goto_0

    :cond_3
    const/16 v3, 0x23

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/f;->B0:I

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc2/f;->G2()V

    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    return v0

    :cond_6
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_7

    move p1, v1

    goto :goto_0

    :cond_7
    const-string p1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, p1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_8
    if-ge v0, v4, :cond_0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_9

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v3, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_0

    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v2
.end method

.method public final E2(I)I
    .locals 3

    const/16 v0, 0x2c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    :cond_0
    :goto_0
    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lc2/f;->l0:[C

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char p1, v0, p1

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Lc2/f;->A2()I

    move-result p0

    return p0

    :cond_3
    if-ge p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget p1, p0, Lx1/b;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    throw v1

    :cond_7
    invoke-virtual {p0}, Lc2/f;->A2()I

    move-result p0

    return p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1
.end method

.method public final F2()V
    .locals 7

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/f;->A0:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v0, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lx1/b;->p:I

    aget-char v0, v0, v3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/f;->G2()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_b

    :cond_3
    :goto_1
    iget v0, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt v0, v5, :cond_4

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v5, p0, Lx1/b;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-char v0, v0, v5

    if-gt v0, v3, :cond_3

    if-ne v0, v3, :cond_7

    iget v0, p0, Lx1/b;->q:I

    if-lt v6, v0, :cond_6

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_6
    :goto_2
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v5, p0, Lx1/b;->p:I

    aget-char v0, v0, v5

    if-ne v0, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lx1/b;->p:I

    :goto_3
    return-void

    :cond_7
    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v6, p0, Lx1/b;->v:I

    goto :goto_1

    :cond_8
    const/16 v5, 0xd

    if-ne v0, v5, :cond_9

    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_1

    :cond_9
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v2

    :cond_b
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_c
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2
.end method

.method public final G2()V
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lc2/f;->B2()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final H2()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/f;->q0:Z

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    iget-object v2, p0, Lc2/f;->l0:[C

    :goto_0
    if-lt v0, v1, :cond_1

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    goto :goto_1

    :cond_0
    const-string v0, ": was expecting closing quote for a string value"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    const/16 v4, 0x5c

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_2

    iput v3, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Lc2/f;->N1()C

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x22

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_3

    iput v3, p0, Lx1/b;->p:I

    return-void

    :cond_3
    const/16 v4, 0x20

    if-ge v0, v4, :cond_4

    iput v3, p0, Lx1/b;->p:I

    const-string v4, "string value"

    invoke-virtual {p0, v0, v4}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lx1/b;->Y:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final I2()I
    .locals 10

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx1/b;->q1()V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/16 v1, 0x23

    const/16 v3, 0x2f

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lx1/b;->p:I

    :goto_1
    invoke-virtual {p0}, Lc2/f;->J2()I

    move-result p0

    return p0

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_4

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_3

    :cond_4
    if-ne v0, v7, :cond_5

    :goto_2
    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_3

    :cond_5
    if-ne v0, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v5

    :cond_7
    :goto_3
    iget v0, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lc2/f;->l0:[C

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-char v0, v2, v0

    if-le v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    return v0

    :cond_9
    :goto_4
    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lx1/b;->p:I

    goto :goto_1

    :cond_a
    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_b

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v9, p0, Lx1/b;->v:I

    goto :goto_3

    :cond_b
    if-ne v0, v7, :cond_c

    goto :goto_2

    :cond_c
    if-ne v0, v6, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v5

    :cond_e
    invoke-virtual {p0}, Lc2/f;->J2()I

    move-result p0

    return p0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lx1/b;->G:[B

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lc2/f;->f2(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lx1/b;->G:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/f;->q0:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object v0, p0, Lx1/b;->G:[B

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    invoke-virtual {p0}, Lc2/f;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lx1/c;->o1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p1

    iput-object p1, p0, Lx1/b;->G:[B

    :cond_2
    :goto_0
    iget-object p0, p0, Lx1/b;->G:[B

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final J1()V
    .locals 1

    iget-object v0, p0, Lc2/f;->Z:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    iget-boolean v0, v0, Lcom/fasterxml/jackson/core/io/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc2/f;->Z:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc2/f;->Z:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method public final J2()I
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx1/b;->q1()V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0x20

    if-le v0, v3, :cond_5

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lc2/f;->F2()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/f;->B0:I

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lc2/f;->G2()V

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lc2/f;->B2()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 p0, 0x6

    if-eq v1, p0, :cond_3

    const/4 p0, 0x7

    if-eq v1, p0, :cond_3

    const/16 p0, 0x8

    if-eq v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final K2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    iget-wide v1, p0, Lx1/b;->t:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx1/b;->w:J

    iget v1, p0, Lx1/b;->u:I

    iput v1, p0, Lx1/b;->x:I

    iget v1, p0, Lx1/b;->v:I

    sub-int/2addr v0, v1

    iput v0, p0, Lx1/b;->y:I

    return-void
.end method

.method public final L0()[C
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lx1/b;->E:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lx1/b;->C:[C

    if-nez v3, :cond_3

    iget-object v3, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/d;->c(I)[C

    move-result-object v3

    iput-object v3, p0, Lx1/b;->C:[C

    goto :goto_0

    :cond_3
    array-length v3, v3

    if-ge v3, v1, :cond_4

    new-array v3, v1, [C

    iput-object v3, p0, Lx1/b;->C:[C

    :cond_4
    :goto_0
    iget-object v3, p0, Lx1/b;->C:[C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->E:Z

    :cond_5
    iget-object p0, p0, Lx1/b;->C:[C

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final L2(I)V
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_2
    iget p1, p0, Lx1/b;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->u:I

    iput v0, p0, Lx1/b;->v:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final M0()I
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    array-length p0, p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final M2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lc2/f;->l0:[C

    iget p2, p0, Lx1/b;->p:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lx1/b;->p:I

    aget-char p0, p1, p2

    return p0
.end method

.method public final N0()I
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final N1()C
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    const-string v3, " in character escape sequence"

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3, v0}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x62

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lx1/b;->R1(C)V

    return v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_6

    iget v4, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt v4, v5, :cond_4

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3, v0}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_4
    :goto_2
    iget-object v4, p0, Lc2/f;->l0:[C

    iget v5, p0, Lx1/b;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-char v4, v4, v5

    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v5

    if-ltz v5, :cond_5

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v4, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_6
    int-to-char p0, v1

    return p0

    :cond_7
    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xd

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xc

    return p0

    :cond_b
    const/16 p0, 0x8

    return p0

    :cond_c
    return v0
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lc2/f;->n0:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-wide/16 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lx1/b;->t:J

    iget-wide v5, v0, Lc2/f;->r0:J

    sub-long/2addr v5, v3

    add-long v11, v5, v1

    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v8

    const-wide/16 v9, -0x1

    iget v13, v0, Lc2/f;->s0:I

    iget v14, v0, Lc2/f;->t0:I

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v16

    const-wide/16 v17, -0x1

    iget-wide v5, v0, Lx1/b;->w:J

    sub-long v19, v5, v3

    iget v2, v0, Lx1/b;->x:I

    iget v0, v0, Lx1/b;->y:I

    move-object v15, v1

    move/from16 v21, v2

    move/from16 v22, v0

    invoke-direct/range {v15 .. v22}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final U1()V
    .locals 7

    invoke-super {p0}, Lx1/b;->U1()V

    iget-object v0, p0, Lc2/f;->o0:Le2/e;

    iget-boolean v1, v0, Le2/e;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Le2/e;->a:Le2/e;

    if-eqz v1, :cond_3

    iget-boolean v3, v0, Le2/e;->e:Z

    if-eqz v3, :cond_3

    new-instance v3, Le2/d;

    invoke-direct {v3, v0}, Le2/d;-><init>(Le2/e;)V

    iget-object v1, v1, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/d;

    iget v5, v4, Le2/d;->a:I

    iget v6, v3, Le2/d;->a:I

    if-ne v6, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x2ee0

    if-le v6, v5, :cond_2

    new-instance v3, Le2/d;

    const/16 v5, 0x40

    new-array v5, v5, [Ljava/lang/String;

    const/16 v6, 0x20

    new-array v6, v6, [Le2/c;

    invoke-direct {v3, v5, v6}, Le2/d;-><init>([Ljava/lang/String;[Le2/c;)V

    :cond_2
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    iput-boolean v2, v0, Le2/e;->l:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lc2/f;->m0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc2/f;->l0:[C

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    iput-object v1, p0, Lc2/f;->l0:[C

    iget-object p0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    if-eq v0, v2, :cond_5

    array-length v3, v0

    array-length v2, v2

    if-lt v3, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer smaller than original"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 11

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->v:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    const-wide/16 v3, -0x1

    iget-wide v5, p0, Lx1/b;->t:J

    iget v1, p0, Lx1/b;->p:I

    int-to-long v9, v1

    add-long/2addr v5, v9

    iget v7, p0, Lx1/b;->u:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method public final d1()Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/f;->q2()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_0
    iget-boolean v1, p0, Lc2/f;->q0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc2/f;->H2()V

    :cond_1
    invoke-virtual {p0}, Lc2/f;->I2()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->close()V

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_2
    iput-object v3, p0, Lx1/b;->G:[B

    const/16 v4, 0x5d

    if-eq v1, v4, :cond_19

    const/16 v5, 0x7d

    if-ne v1, v5, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v1}, Lc2/f;->E2(I)I

    move-result v1

    iget v6, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v7, Lc2/f;->u0:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    if-eq v1, v4, :cond_4

    if-ne v1, v5, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lc2/f;->e2(I)V

    return-object v3

    :cond_5
    iget-object v4, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v4

    const/16 v5, 0x7b

    const/16 v6, 0x74

    const/16 v7, 0x6e

    const/16 v8, 0x66

    const/16 v9, 0x5b

    const/4 v10, 0x1

    const/16 v11, 0x22

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lc2/f;->K2()V

    if-ne v1, v11, :cond_6

    iput-boolean v10, p0, Lc2/f;->q0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_2

    :cond_6
    if-eq v1, v9, :cond_c

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_8

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lc2/f;->s2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v10}, Lc2/f;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v2, Lc2/f;->x0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v10

    iput v0, p0, Lx1/b;->p:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1}, Lc2/f;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_0
    invoke-virtual {p0, v1}, Lc2/f;->j2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v2, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v2}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_9
    const-string v0, "true"

    invoke-virtual {p0, v10, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_a
    const-string v0, "null"

    invoke-virtual {p0, v10, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_b
    const-string v0, "false"

    invoke-virtual {p0, v10, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v2, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v2}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_2
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_d
    iget v3, p0, Lx1/b;->p:I

    int-to-long v12, v3

    iput-wide v12, p0, Lc2/f;->r0:J

    iget v4, p0, Lx1/b;->u:I

    iput v4, p0, Lc2/f;->s0:I

    iget v4, p0, Lx1/b;->v:I

    sub-int/2addr v3, v4

    iput v3, p0, Lc2/f;->t0:I

    if-ne v1, v11, :cond_e

    invoke-virtual {p0}, Lc2/f;->t2()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v1}, Lc2/f;->i2(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3, v1}, Lc2/c;->m(Ljava/lang/String;)V

    iput-object v2, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/f;->C2()I

    move-result v2

    invoke-virtual {p0}, Lc2/f;->K2()V

    if-ne v2, v11, :cond_f

    iput-boolean v10, p0, Lc2/f;->q0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_f
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_17

    if-eq v2, v9, :cond_16

    if-eq v2, v8, :cond_15

    if-eq v2, v7, :cond_14

    if-eq v2, v6, :cond_13

    if-eq v2, v5, :cond_12

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_10

    packed-switch v2, :pswitch_data_2

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, v2}, Lc2/f;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_10
    invoke-virtual {p0, v0}, Lc2/f;->s2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v10}, Lc2/f;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Lc2/f;->p2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Lc2/f;->n2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_15
    invoke-virtual {p0}, Lc2/f;->m2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_16
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_17
    sget-object v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v0}, Lc2/f;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_18
    :goto_4
    invoke-virtual {p0, v2}, Lc2/f;->j2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_19
    :goto_6
    invoke-virtual {p0, v1}, Lc2/f;->e2(I)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final e1()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lc2/f;->q0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lc2/f;->q0:Z

    invoke-virtual {p0}, Lc2/f;->g2()V

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lc2/f;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lc2/f;->K0()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public final e2(I)V
    .locals 4

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lc2/f;->K2()V

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, v3, Lc2/c;->g:Ljava/lang/Object;

    iget-object v3, v3, Lc2/c;->c:Lc2/c;

    iput-object v3, p0, Lx1/b;->z:Lc2/c;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lx1/b;->V1(CI)V

    throw v1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lc2/f;->K2()V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, p1, Lc2/c;->g:Ljava/lang/Object;

    iget-object p1, p1, Lc2/c;->c:Lc2/c;

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p1}, Lx1/b;->V1(CI)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/f;->q2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-boolean v2, p0, Lc2/f;->q0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lc2/f;->H2()V

    :cond_1
    invoke-virtual {p0}, Lc2/f;->I2()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lx1/b;->close()V

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_2
    iput-object v3, p0, Lx1/b;->G:[B

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_15

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v2}, Lc2/f;->E2(I)I

    move-result v2

    iget v6, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v7, Lc2/f;->u0:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    if-eq v2, v4, :cond_15

    if-ne v2, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v4, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v4

    const/16 v6, 0x22

    if-eqz v4, :cond_6

    iget v7, p0, Lx1/b;->p:I

    int-to-long v8, v7

    iput-wide v8, p0, Lc2/f;->r0:J

    iget v8, p0, Lx1/b;->u:I

    iput v8, p0, Lc2/f;->s0:I

    iget v8, p0, Lx1/b;->v:I

    sub-int/2addr v7, v8

    iput v7, p0, Lc2/f;->t0:I

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, Lc2/f;->t2()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lc2/f;->i2(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v7, v2}, Lc2/c;->m(Ljava/lang/String;)V

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/f;->C2()I

    move-result v2

    :cond_6
    invoke-virtual {p0}, Lc2/f;->K2()V

    const/4 v1, 0x1

    if-eq v2, v6, :cond_13

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_11

    const/16 v6, 0x5b

    if-eq v2, v6, :cond_f

    const/16 v6, 0x66

    if-eq v2, v6, :cond_e

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_d

    const/16 v6, 0x74

    if-eq v2, v6, :cond_c

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_a

    if-eq v2, v5, :cond_9

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_8

    const/16 v1, 0x2e

    if-eq v2, v1, :cond_7

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Lc2/f;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lc2/f;->s2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v1}, Lc2/f;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, "expected a value"

    invoke-virtual {p0, v2, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_a
    if-nez v4, :cond_b

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v2, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v2}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lc2/f;->p2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lc2/f;->n2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lc2/f;->m2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_f
    if-nez v4, :cond_10

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v2, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v2}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_11
    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Lc2/f;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_12
    :goto_1
    invoke-virtual {p0, v2}, Lc2/f;->j2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_13
    iput-boolean v1, p0, Lc2/f;->q0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_2
    if-eqz v4, :cond_14

    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_4

    :cond_14
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_15
    :goto_3
    invoke-virtual {p0, v2}, Lc2/f;->e2(I)V

    :goto_4
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f2(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 10

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    :cond_0
    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lc2/f;->l2()V

    :cond_1
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v2, p0, Lx1/b;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lx1/b;->p:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v1, v4, :cond_4

    invoke-virtual {p0}, Lc2/f;->l2()V

    :cond_4
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lx1/b;->p:I

    aget-char v1, v1, v4

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    invoke-virtual {p0, p1, v1, v5}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    iget v2, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v2, v4, :cond_6

    invoke-virtual {p0}, Lc2/f;->l2()V

    :cond_6
    iget-object v2, p0, Lc2/f;->l0:[C

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-char v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x2

    if-gez v4, :cond_d

    if-eq v4, v8, :cond_9

    if-ne v2, v3, :cond_8

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_7
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v5

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0, p1, v2, v6}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_9
    if-ne v4, v8, :cond_d

    iget v2, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lc2/f;->l2()V

    :cond_a
    iget-object v2, p0, Lc2/f;->l0:[C

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lx1/b;->p:I

    aget-char v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, p1, v2, v7}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v3

    if-ne v3, v8, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "expected padding character \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, v7, p0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_c
    :goto_1
    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    iget v2, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v2, v4, :cond_e

    invoke-virtual {p0}, Lc2/f;->l2()V

    :cond_e
    iget-object v2, p0, Lc2/f;->l0:[C

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-char v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    if-gez v4, :cond_12

    if-eq v4, v8, :cond_11

    if-ne v2, v3, :cond_10

    shr-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_f
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v5

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0, p1, v2, v7}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_11
    if-ne v4, v8, :cond_12

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    goto/16 :goto_0

    :cond_12
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->d(I)V

    goto/16 :goto_0
.end method

.method public final g2()V
    .locals 11

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/16 v2, 0x22

    sget-object v3, Lc2/f;->C0:[I

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ge v0, v1, :cond_2

    array-length v5, v3

    :cond_0
    iget-object v6, p0, Lc2/f;->l0:[C

    aget-char v7, v6, v0

    if-ge v7, v5, :cond_1

    aget v8, v3, v7

    if-eqz v8, :cond_1

    if-ne v7, v2, :cond_2

    iget v1, p0, Lx1/b;->p:I

    sub-int v2, v0, v1

    invoke-virtual {v4, v1, v6, v2}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v5, p0, Lx1/b;->p:I

    sub-int v6, v0, v5

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/fasterxml/jackson/core/util/j;->b:[C

    const/4 v8, -0x1

    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->c:I

    const/4 v8, 0x0

    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->d:I

    iput-object v7, v4, Lcom/fasterxml/jackson/core/util/j;->j:Ljava/lang/String;

    iput-object v7, v4, Lcom/fasterxml/jackson/core/util/j;->k:[C

    iget-boolean v9, v4, Lcom/fasterxml/jackson/core/util/j;->f:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->e()V

    goto :goto_0

    :cond_3
    iget-object v9, v4, Lcom/fasterxml/jackson/core/util/j;->h:[C

    if-nez v9, :cond_4

    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/j;->d(I)[C

    move-result-object v9

    iput-object v9, v4, Lcom/fasterxml/jackson/core/util/j;->h:[C

    :cond_4
    :goto_0
    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->g:I

    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {v4, v5, v1, v6}, Lcom/fasterxml/jackson/core/util/j;->c(I[CI)V

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->m()[C

    move-result-object v0

    iget v1, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    array-length v5, v3

    :goto_1
    iget v6, p0, Lx1/b;->p:I

    iget v9, p0, Lx1/b;->q:I

    if-lt v6, v9, :cond_6

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, ": was expecting closing quote for a string value"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, v1}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v7

    :cond_6
    :goto_2
    iget-object v6, p0, Lc2/f;->l0:[C

    iget v9, p0, Lx1/b;->p:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lx1/b;->p:I

    aget-char v6, v6, v9

    if-ge v6, v5, :cond_9

    aget v9, v3, v6

    if-eqz v9, :cond_9

    if-ne v6, v2, :cond_7

    iput v1, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    return-void

    :cond_7
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_8

    invoke-virtual {p0}, Lc2/f;->N1()C

    move-result v6

    goto :goto_3

    :cond_8
    const/16 v9, 0x20

    if-ge v6, v9, :cond_9

    const-string v9, "string value"

    invoke-virtual {p0, v6, v9}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_9
    :goto_3
    array-length v9, v0

    if-lt v1, v9, :cond_a

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v0

    move v1, v8

    :cond_a
    add-int/lit8 v9, v1, 0x1

    aput-char v6, v0, v1

    move v1, v9

    goto :goto_1
.end method

.method public final h2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    const/16 v0, 0x49

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lx1/c;->x1(Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v1

    :cond_1
    :goto_0
    iget-object p1, p0, Lc2/f;->l0:[C

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char p1, p1, v0

    const/16 v0, 0x4e

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v6, "\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    const-string v7, "Non-standard token \'"

    sget v8, Lc2/f;->w0:I

    const/4 v9, 0x3

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    :goto_1
    invoke-virtual {p0, v9, p1}, Lc2/f;->o2(ILjava/lang/String;)V

    iget p3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr p3, v8

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    :goto_2
    invoke-virtual {p0, p1, v2, v3}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_6

    const-string p1, "-Infinity"

    goto :goto_3

    :cond_6
    const-string p1, "+Infinity"

    :goto_3
    invoke-virtual {p0, v9, p1}, Lc2/f;->o2(ILjava/lang/String;)V

    iget p3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr p3, v8

    if-eqz p3, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move-wide v2, v4

    :goto_4
    invoke-virtual {p0, p1, v2, v3}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_9
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p3, :cond_b

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    const/16 p1, 0x2b

    const-string p2, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1

    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    goto :goto_6

    :cond_c
    const-string p2, "expected digit (0-9) for valid numeric value"

    :goto_6
    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 2

    iget-boolean v0, p0, Lc2/f;->q0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->b()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lc2/f;->y2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc2/f;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/io/c;->write([B)V

    array-length p0, p0

    return p0
.end method

.method public final i2(I)Ljava/lang/String;
    .locals 10

    iget v0, p0, Lc2/f;->p0:I

    iget-object v1, p0, Lc2/f;->o0:Le2/e;

    const/16 v2, 0x27

    if-ne p1, v2, :cond_4

    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/f;->y0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget p1, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-ge p1, v3, :cond_3

    sget-object v4, Lc2/f;->C0:[I

    array-length v5, v4

    :cond_0
    iget-object v6, p0, Lc2/f;->l0:[C

    aget-char v7, v6, p1

    if-ne v7, v2, :cond_1

    iget v2, p0, Lx1/b;->p:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lx1/b;->p:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v6, v0}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-ge v7, v5, :cond_2

    aget v6, v4, v7

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v7

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v3, :cond_0

    :cond_3
    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iput p1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v1, v0, v2}, Lc2/f;->u2(III)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/f;->z0:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    sget-object v2, Lcom/fasterxml/jackson/core/io/b;->g:[I

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p1, v4, :cond_6

    aget v7, v2, p1

    if-nez v7, :cond_5

    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v5

    goto :goto_2

    :cond_6
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    :goto_2
    if-eqz v7, :cond_f

    iget p1, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-ge p1, v3, :cond_a

    :cond_7
    iget-object v7, p0, Lc2/f;->l0:[C

    aget-char v8, v7, p1

    if-ge v8, v4, :cond_8

    aget v9, v2, v8

    if-eqz v9, :cond_9

    iget v2, p0, Lx1/b;->p:I

    sub-int/2addr v2, v6

    iput p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v7, v0}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    int-to-char v7, v8

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-nez v7, :cond_9

    iget v2, p0, Lx1/b;->p:I

    sub-int/2addr v2, v6

    iput p1, p0, Lx1/b;->p:I

    iget-object p0, p0, Lc2/f;->l0:[C

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, p0, v0}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v8

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v3, :cond_7

    :cond_a
    iget v3, p0, Lx1/b;->p:I

    sub-int/2addr v3, v6

    iput p1, p0, Lx1/b;->p:I

    iget-object v4, p0, Lc2/f;->l0:[C

    sub-int/2addr p1, v3

    iget-object v7, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v7, v3, v4, p1}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/j;->m()[C

    move-result-object p1

    iget v3, v7, Lcom/fasterxml/jackson/core/util/j;->i:I

    array-length v4, v2

    :goto_3
    iget v8, p0, Lx1/b;->p:I

    iget v9, p0, Lx1/b;->q:I

    if-lt v8, v9, :cond_b

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lc2/f;->l0:[C

    iget v9, p0, Lx1/b;->p:I

    aget-char v8, v8, v9

    if-ge v8, v4, :cond_c

    aget v9, v2, v8

    if-eqz v9, :cond_d

    goto :goto_4

    :cond_c
    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-nez v9, :cond_d

    :goto_4
    iput v3, v7, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p0

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p1

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result v2

    invoke-virtual {v1, p1, v2, p0, v0}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    iget v9, p0, Lx1/b;->p:I

    add-int/2addr v9, v6

    iput v9, p0, Lx1/b;->p:I

    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v8

    add-int/lit8 v9, v3, 0x1

    aput-char v8, p1, v3

    array-length v3, p1

    if-lt v9, v3, :cond_e

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v3, v5

    goto :goto_3

    :cond_e
    move v3, v9

    goto :goto_3

    :cond_f
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_10
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3
.end method

.method public final j2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_9

    const/16 v1, 0x49

    sget v3, Lc2/f;->w0:I

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x4e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4

    goto/16 :goto_4

    :cond_0
    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lx1/c;->x1(Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p1, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-char p1, p1, v1

    invoke-virtual {p0, p1, v0, v4}, Lc2/f;->h2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/f;->x0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v4

    iput p1, p0, Lx1/b;->p:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_5
    const-string p1, "NaN"

    invoke-virtual {p0, v4, p1}, Lc2/f;->o2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "Non-standard token \'NaN\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_7
    const-string p1, "Infinity"

    invoke-virtual {p0, v4, p1}, Lc2/f;->o2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "Non-standard token \'Infinity\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_9
    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/f;->y0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object p1

    iget v4, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    :goto_1
    iget v5, p0, Lx1/b;->p:I

    iget v6, p0, Lx1/b;->q:I

    if-lt v5, v6, :cond_b

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    const-string p1, ": was expecting closing quote for a string value"

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1, v0}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_b
    :goto_2
    iget-object v5, p0, Lc2/f;->l0:[C

    iget v6, p0, Lx1/b;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lx1/b;->p:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-gt v5, v6, :cond_e

    if-ne v5, v6, :cond_c

    invoke-virtual {p0}, Lc2/f;->N1()C

    move-result v5

    goto :goto_3

    :cond_c
    if-gt v5, v1, :cond_e

    if-ne v5, v1, :cond_d

    iput v4, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_d
    const/16 v6, 0x20

    if-ge v5, v6, :cond_e

    const-string v6, "string value"

    invoke-virtual {p0, v5, v6}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_e
    :goto_3
    array-length v6, p1

    if-lt v4, v6, :cond_f

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v4, v0

    :cond_f
    add-int/lit8 v6, v4, 0x1

    aput-char v5, p1, v4

    move v4, v6

    goto :goto_1

    :cond_10
    :goto_4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc2/f;->z2(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected a valid value "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2
.end method

.method public final k2()Z
    .locals 7

    iget-object v0, p0, Lc2/f;->Z:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lc2/f;->l0:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    iget v2, p0, Lx1/b;->q:I

    iget-wide v3, p0, Lx1/b;->t:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lx1/b;->t:J

    iget v3, p0, Lx1/b;->v:I

    sub-int/2addr v3, v2

    iput v3, p0, Lx1/b;->v:I

    iget-wide v2, p0, Lc2/f;->r0:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lc2/f;->r0:J

    iput v1, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->q:I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lc2/f;->J1()V

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lx1/b;->q:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final l2()V
    .locals 1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lx1/c;->v1()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/f;->l0:[C

    aget-char v2, v1, v0

    const/16 v4, 0x61

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x73

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x65

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v3, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    return-void
.end method

.method public final n2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/f;->l0:[C

    aget-char v2, v1, v0

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "null"

    invoke-virtual {p0, v3, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    return-void
.end method

.method public final o2(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lx1/b;->p:I

    add-int/2addr v1, v0

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x0

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v1, v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v2, p0, Lx1/b;->p:I

    aget-char v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lx1/b;->q:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    aget-char v0, v0, v1

    if-lt v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/f;->z2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/f;->z2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v2, p0, Lx1/b;->p:I

    aget-char v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_9

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lc2/f;->l0:[C

    aget-char v0, v0, v1

    if-lt v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/f;->z2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_1
    return-void

    :cond_9
    invoke-virtual {p2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/f;->z2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final p2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/f;->l0:[C

    aget-char v2, v1, v0

    const/16 v4, 0x72

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x65

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "true"

    invoke-virtual {p0, v3, v0}, Lc2/f;->o2(ILjava/lang/String;)V

    return-void
.end method

.method public final q2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final r2(IIIIZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    iget v0, p0, Lx1/b;->q:I

    const/4 v1, 0x0

    const/16 v2, 0x2e

    const/16 v3, 0x39

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-ne p1, v2, :cond_5

    move p1, v5

    :goto_0
    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2, p5}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lc2/f;->l0:[C

    add-int/lit8 v6, p3, 0x1

    aget-char p3, v2, p3

    if-lt p3, v4, :cond_2

    if-le p3, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, p1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    move v8, p3

    move p3, p1

    move p1, v8

    goto :goto_3

    :cond_5
    move v6, p3

    move p3, v5

    :goto_3
    const/16 v2, 0x65

    if-eq p1, v2, :cond_6

    const/16 v2, 0x45

    if-ne p1, v2, :cond_d

    :cond_6
    if-lt v6, v0, :cond_7

    iput p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p2, p5}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p1, p0, Lc2/f;->l0:[C

    add-int/lit8 v2, v6, 0x1

    aget-char v6, p1, v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_9

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v6

    move v6, v2

    goto :goto_6

    :cond_9
    :goto_5
    if-lt v2, v0, :cond_a

    iput p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p2, p5}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 v6, v2, 0x1

    aget-char p1, p1, v2

    :goto_6
    if-gt p1, v3, :cond_c

    if-lt p1, v4, :cond_c

    add-int/lit8 v5, v5, 0x1

    if-lt v6, v0, :cond_b

    iput p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p2, p5}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p1, p0, Lc2/f;->l0:[C

    add-int/lit8 v2, v6, 0x1

    aget-char v6, p1, v6

    goto :goto_4

    :cond_c
    if-eqz v5, :cond_f

    :cond_d
    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lx1/b;->p:I

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lc2/f;->L2(I)V

    :cond_e
    sub-int/2addr v6, p2

    iget-object p1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-object v0, p0, Lc2/f;->l0:[C

    invoke-virtual {p1, p2, v0, v6}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    invoke-virtual {p0, p4, p3, v5, p5}, Lx1/b;->c2(IIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p2, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1
.end method

.method public final s2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6

    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lc2/f;->j2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v0, v3, -0x1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v2, v0

    const/16 v1, 0x2e

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lc2/f;->r2(IIIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final t2()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lc2/f;->p0:I

    :goto_0
    iget v2, p0, Lx1/b;->q:I

    const/16 v3, 0x22

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lc2/f;->l0:[C

    aget-char v4, v2, v0

    sget-object v5, Lc2/f;->C0:[I

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget v5, v5, v4

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_1

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lx1/b;->p:I

    iget-object p0, p0, Lc2/f;->o0:Le2/e;

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0, v2, v1}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit8 v1, v1, 0x21

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0, v2, v1, v3}, Lc2/f;->u2(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u2(III)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v2, p1, v0, v1}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->m()[C

    move-result-object p1

    iget v0, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, " in field name"

    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1, p2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Lc2/f;->l0:[C

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lx1/b;->p:I

    aget-char v1, v1, v3

    const/16 v3, 0x5c

    if-gt v1, v3, :cond_4

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lc2/f;->N1()C

    move-result v1

    goto :goto_2

    :cond_2
    if-gt v1, p3, :cond_4

    if-ne v1, p3, :cond_3

    iput v0, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p3

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result v0

    iget-object p0, p0, Lc2/f;->o0:Le2/e;

    invoke-virtual {p0, p3, v0, p1, p2}, Le2/e;->c(II[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v3, 0x20

    if-ge v1, v3, :cond_4

    const-string v3, "name"

    invoke-virtual {p0, v1, v3}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_4
    :goto_2
    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v1

    add-int/lit8 v3, v0, 0x1

    aput-char v1, p1, v0

    array-length v0, p1

    if-lt v3, v0, :cond_5

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public final v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz v1, :cond_0

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    iput v2, v0, Lx1/b;->p:I

    iget-object v2, v0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-eqz v1, :cond_1

    aput-char v6, v3, v4

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iget v8, v0, Lx1/b;->p:I

    iget v9, v0, Lx1/b;->q:I

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Lc2/f;->l0:[C

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lx1/b;->p:I

    aget-char v8, v9, v8

    goto :goto_2

    :cond_2
    const-string v8, "No digit following minus sign"

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v8, v9}, Lc2/f;->M2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C

    move-result v8

    :goto_2
    const/4 v9, 0x0

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-ne v8, v11, :cond_b

    iget v8, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-ge v8, v12, :cond_3

    iget-object v13, v0, Lc2/f;->l0:[C

    aget-char v13, v13, v8

    if-lt v13, v11, :cond_a

    if-le v13, v10, :cond_3

    goto :goto_3

    :cond_3
    if-lt v8, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc2/f;->k2()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lc2/f;->l0:[C

    iget v12, v0, Lx1/b;->p:I

    aget-char v8, v8, v12

    if-lt v8, v11, :cond_a

    if-le v8, v10, :cond_5

    goto :goto_3

    :cond_5
    iget v13, v0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v14, Lc2/f;->v0:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_9

    add-int/2addr v12, v5

    iput v12, v0, Lx1/b;->p:I

    if-ne v8, v11, :cond_b

    :cond_6
    iget v12, v0, Lx1/b;->p:I

    iget v13, v0, Lx1/b;->q:I

    if-lt v12, v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lc2/f;->k2()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_7
    iget-object v8, v0, Lc2/f;->l0:[C

    iget v12, v0, Lx1/b;->p:I

    aget-char v8, v8, v12

    if-lt v8, v11, :cond_a

    if-le v8, v10, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lx1/b;->p:I

    if-eq v8, v11, :cond_6

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lx1/c;->D1()V

    throw v9

    :cond_a
    :goto_3
    move v8, v11

    :cond_b
    :goto_4
    move v12, v4

    :goto_5
    if-lt v8, v11, :cond_e

    if-gt v8, v10, :cond_e

    add-int/lit8 v12, v12, 0x1

    array-length v13, v3

    if-lt v7, v13, :cond_c

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v7, v4

    :cond_c
    add-int/lit8 v13, v7, 0x1

    aput-char v8, v3, v7

    iget v7, v0, Lx1/b;->p:I

    iget v8, v0, Lx1/b;->q:I

    if-lt v7, v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lc2/f;->k2()Z

    move-result v7

    if-nez v7, :cond_d

    move v8, v4

    move v7, v13

    move v13, v5

    goto :goto_6

    :cond_d
    iget-object v7, v0, Lc2/f;->l0:[C

    iget v8, v0, Lx1/b;->p:I

    add-int/lit8 v14, v8, 0x1

    iput v14, v0, Lx1/b;->p:I

    aget-char v8, v7, v8

    move v7, v13

    goto :goto_5

    :cond_e
    move v13, v4

    :goto_6
    if-nez v12, :cond_f

    sget-object v14, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v0, v8, v1, v4}, Lc2/f;->h2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_f
    const/16 v14, 0x2e

    if-ne v8, v14, :cond_16

    array-length v14, v3

    if-lt v7, v14, :cond_10

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v7, v4

    :cond_10
    add-int/lit8 v14, v7, 0x1

    aput-char v8, v3, v7

    move v7, v14

    move v14, v4

    :goto_7
    iget v4, v0, Lx1/b;->p:I

    iget v15, v0, Lx1/b;->q:I

    if-lt v4, v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lc2/f;->k2()Z

    move-result v4

    if-nez v4, :cond_11

    move v13, v5

    goto :goto_8

    :cond_11
    iget-object v4, v0, Lc2/f;->l0:[C

    iget v8, v0, Lx1/b;->p:I

    add-int/lit8 v15, v8, 0x1

    iput v15, v0, Lx1/b;->p:I

    aget-char v8, v4, v8

    if-lt v8, v11, :cond_14

    if-le v8, v10, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v14, v14, 0x1

    array-length v4, v3

    if-lt v7, v4, :cond_13

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    const/4 v7, 0x0

    :cond_13
    add-int/lit8 v4, v7, 0x1

    aput-char v8, v3, v7

    move v7, v4

    goto :goto_7

    :cond_14
    :goto_8
    if-nez v14, :cond_17

    sget-object v4, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_9

    :cond_15
    const-string v1, "Decimal point not followed by a digit"

    invoke-virtual {v0, v8, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v9

    :cond_16
    const/4 v14, -0x1

    :cond_17
    :goto_9
    const/16 v4, 0x65

    if-eq v8, v4, :cond_19

    const/16 v4, 0x45

    if-ne v8, v4, :cond_18

    goto :goto_a

    :cond_18
    const/4 v15, -0x1

    goto/16 :goto_f

    :cond_19
    :goto_a
    array-length v4, v3

    if-lt v7, v4, :cond_1a

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    const/4 v7, 0x0

    :cond_1a
    add-int/lit8 v4, v7, 0x1

    aput-char v8, v3, v7

    iget v7, v0, Lx1/b;->p:I

    iget v8, v0, Lx1/b;->q:I

    const-string v15, "expected a digit for number exponent"

    if-ge v7, v8, :cond_1b

    iget-object v8, v0, Lc2/f;->l0:[C

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-char v7, v8, v7

    goto :goto_b

    :cond_1b
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v15, v7}, Lc2/f;->M2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C

    move-result v7

    :goto_b
    if-eq v7, v6, :cond_1c

    const/16 v6, 0x2b

    if-ne v7, v6, :cond_1f

    :cond_1c
    array-length v6, v3

    if-lt v4, v6, :cond_1d

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    const/4 v4, 0x0

    :cond_1d
    add-int/lit8 v6, v4, 0x1

    aput-char v7, v3, v4

    iget v4, v0, Lx1/b;->p:I

    iget v7, v0, Lx1/b;->q:I

    if-ge v4, v7, :cond_1e

    iget-object v7, v0, Lc2/f;->l0:[C

    add-int/lit8 v8, v4, 0x1

    iput v8, v0, Lx1/b;->p:I

    aget-char v4, v7, v4

    goto :goto_c

    :cond_1e
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v15, v4}, Lc2/f;->M2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C

    move-result v4

    :goto_c
    move v7, v4

    move v4, v6

    :cond_1f
    move v8, v7

    const/4 v6, 0x0

    :goto_d
    if-gt v8, v10, :cond_22

    if-lt v8, v11, :cond_22

    add-int/lit8 v6, v6, 0x1

    array-length v7, v3

    if-lt v4, v7, :cond_20

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    const/4 v4, 0x0

    :cond_20
    add-int/lit8 v7, v4, 0x1

    aput-char v8, v3, v4

    iget v4, v0, Lx1/b;->p:I

    iget v9, v0, Lx1/b;->q:I

    if-lt v4, v9, :cond_21

    invoke-virtual/range {p0 .. p0}, Lc2/f;->k2()Z

    move-result v4

    if-nez v4, :cond_21

    move v13, v5

    goto :goto_e

    :cond_21
    iget-object v4, v0, Lc2/f;->l0:[C

    iget v8, v0, Lx1/b;->p:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-char v8, v4, v8

    move v4, v7

    goto :goto_d

    :cond_22
    move v7, v4

    :goto_e
    move v15, v6

    if-eqz v15, :cond_25

    :goto_f
    if-nez v13, :cond_23

    iget v3, v0, Lx1/b;->p:I

    sub-int/2addr v3, v5

    iput v3, v0, Lx1/b;->p:I

    iget-object v3, v0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v8}, Lc2/f;->L2(I)V

    :cond_23
    iput v7, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    if-gez v14, :cond_24

    if-gez v15, :cond_24

    invoke-virtual {v0, v12, v1}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual {v0, v12, v14, v15, v1}, Lx1/b;->c2(IIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_25
    const-string v1, "Exponent indicator not followed by a digit"

    invoke-virtual {v0, v8, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final w2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    iget v0, p0, Lx1/b;->p:I

    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v4, p1}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lc2/f;->l0:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    const/16 v2, 0x2e

    const/16 v5, 0x39

    const/4 v6, 0x1

    if-gt v0, v5, :cond_a

    const/16 v7, 0x30

    if-ge v0, v7, :cond_2

    goto :goto_4

    :cond_2
    if-ne v0, v7, :cond_3

    invoke-virtual {p0, v4, p1}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    if-lt v3, v1, :cond_4

    invoke-virtual {p0, v4, p1}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p0, Lc2/f;->l0:[C

    add-int/lit8 v8, v3, 0x1

    aget-char v3, v0, v3

    if-lt v3, v7, :cond_6

    if-le v3, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_1

    :cond_6
    :goto_2
    if-eq v3, v2, :cond_9

    const/16 v0, 0x65

    if-eq v3, v0, :cond_9

    const/16 v0, 0x45

    if-ne v3, v0, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lx1/b;->p:I

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lc2/f;->L2(I)V

    :cond_8
    sub-int/2addr v8, v4

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, p0, Lc2/f;->l0:[C

    invoke-virtual {v0, v4, v1, v8}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    invoke-virtual {p0, v6, p1}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    iput v8, p0, Lx1/b;->p:I

    move-object v2, p0

    move v5, v8

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lc2/f;->r2(IIIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    iput v3, p0, Lx1/b;->p:I

    if-ne v0, v2, :cond_b

    invoke-virtual {p0, p1}, Lc2/f;->s2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, v0, p1, v6}, Lc2/f;->h2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final x2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v3, v0, -0x1

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    const/16 v4, 0x30

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, v3, v2}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    move v5, p1

    :goto_0
    if-lt v0, v1, :cond_1

    iput v3, p0, Lx1/b;->p:I

    invoke-virtual {p0, v3, v2}, Lc2/f;->v2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lc2/f;->l0:[C

    add-int/lit8 v6, v0, 0x1

    aget-char p1, p1, v0

    if-lt p1, v4, :cond_3

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x65

    if-eq p1, v0, :cond_6

    const/16 v0, 0x45

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lx1/b;->p:I

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lc2/f;->L2(I)V

    :cond_5
    sub-int/2addr v6, v3

    iget-object p1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-object v0, p0, Lc2/f;->l0:[C

    invoke-virtual {p1, v3, v0, v6}, Lcom/fasterxml/jackson/core/util/j;->r(I[CI)V

    invoke-virtual {p0, v5, v2}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    iput v6, p0, Lx1/b;->p:I

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v4, v6

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lc2/f;->r2(IIIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final y2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    iget v9, v0, Lx1/b;->p:I

    iget v10, v0, Lx1/b;->q:I

    if-lt v9, v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lc2/f;->l2()V

    :cond_0
    iget-object v9, v0, Lc2/f;->l0:[C

    iget v10, v0, Lx1/b;->p:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lx1/b;->p:I

    aget-char v9, v9, v10

    const/16 v10, 0x20

    if-le v9, v10, :cond_15

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v10

    const/16 v11, 0x22

    if-gez v10, :cond_2

    if-ne v9, v11, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v1, v9, v6}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v10

    if-gez v10, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v7, v4, :cond_3

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    move v7, v6

    :cond_3
    iget v9, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v9, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc2/f;->l2()V

    :cond_4
    iget-object v9, v0, Lc2/f;->l0:[C

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-char v9, v9, v12

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v12

    const/4 v13, 0x1

    if-gez v12, :cond_5

    invoke-virtual {v0, v1, v9, v13}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v12

    :cond_5
    shl-int/lit8 v9, v10, 0x6

    or-int/2addr v9, v12

    iget v10, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v10, v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lc2/f;->l2()V

    :cond_6
    iget-object v10, v0, Lc2/f;->l0:[C

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lx1/b;->p:I

    aget-char v10, v10, v12

    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v12

    const/4 v14, 0x2

    const/4 v15, -0x2

    if-gez v12, :cond_d

    if-eq v12, v15, :cond_9

    if-ne v10, v11, :cond_8

    shr-int/lit8 v4, v9, 0x4

    add-int/lit8 v5, v7, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    move v7, v5

    goto/16 :goto_2

    :cond_7
    iget v2, v0, Lx1/b;->p:I

    sub-int/2addr v2, v13

    iput v2, v0, Lx1/b;->p:I

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {v0, v1, v10, v14}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v10

    move v12, v10

    :cond_9
    if-ne v12, v15, :cond_d

    iget v10, v0, Lx1/b;->p:I

    iget v11, v0, Lx1/b;->q:I

    if-lt v10, v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lc2/f;->l2()V

    :cond_a
    iget-object v10, v0, Lc2/f;->l0:[C

    iget v11, v0, Lx1/b;->p:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lx1/b;->p:I

    aget-char v10, v10, v11

    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v0, v1, v10, v5}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v11

    if-ne v11, v15, :cond_b

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v10, v5, v0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_1
    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    move v7, v10

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v12

    iget v10, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v10, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lc2/f;->l2()V

    :cond_e
    iget-object v10, v0, Lc2/f;->l0:[C

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v5, v12, 0x1

    iput v5, v0, Lx1/b;->p:I

    aget-char v5, v10, v12

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v10

    if-gez v10, :cond_13

    if-eq v10, v15, :cond_12

    if-ne v5, v11, :cond_11

    shr-int/lit8 v4, v9, 0x2

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_10

    :goto_2
    iput-boolean v6, v0, Lc2/f;->q0:Z

    if-lez v7, :cond_f

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    :cond_f
    return v8

    :cond_10
    iget v2, v0, Lx1/b;->p:I

    sub-int/2addr v2, v13

    iput v2, v0, Lx1/b;->p:I

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v11, 0x3

    invoke-virtual {v0, v1, v5, v11}, Lx1/b;->L1(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v10

    goto :goto_3

    :cond_12
    const/4 v11, 0x3

    :goto_3
    if-ne v10, v15, :cond_14

    shr-int/lit8 v5, v9, 0x2

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v9

    goto :goto_5

    :cond_13
    const/4 v11, 0x3

    :cond_14
    shl-int/lit8 v5, v9, 0x6

    or-int/2addr v5, v10

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    move v7, v9

    goto :goto_5

    :cond_15
    :goto_4
    move v11, v5

    :goto_5
    move v5, v11

    goto/16 :goto_0
.end method

.method public final z2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lc2/f;->k2()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lc2/f;->l0:[C

    iget v1, p0, Lx1/b;->p:I

    aget-char p1, p1, v1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, v0, p2}, Lx1/c;->t1(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
