.class public final Ly1/a;
.super Lcom/fasterxml/jackson/core/util/h;
.source "SourceFile"


# instance fields
.field public final d:Z

.field public final e:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field public f:Lcom/fasterxml/jackson/core/JsonToken;

.field public g:Ly1/d;

.field public h:Ly1/d;

.field public i:Ly1/c;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ly1/c;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/h;-><init>(Lcom/fasterxml/jackson/core/g;)V

    iput-object p2, p0, Ly1/a;->i:Ly1/c;

    new-instance p1, Ly1/d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, p2, v0}, Ly1/d;-><init>(ILy1/d;Ly1/c;Z)V

    iput-object p1, p0, Ly1/a;->g:Ly1/d;

    iput-object p3, p0, Ly1/a;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    iput-boolean p4, p0, Ly1/a;->d:Z

    return-void
.end method


# virtual methods
.method public final A0()F
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->A0()F

    move-result p0

    return p0
.end method

.method public final B0()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result p0

    return p0
.end method

.method public final C0()J
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->C0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p0

    return-object p0
.end method

.method public final E0()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final H()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->H()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final H0()Lcom/fasterxml/jackson/core/i;
    .locals 1

    iget-object v0, p0, Ly1/a;->h:Ly1/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    :goto_0
    return-object v0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    return-object p0
.end method

.method public final J0()S
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->J0()S

    move-result p0

    return p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly1/a;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final L0()[C
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly1/a;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->L0()[C

    move-result-object p0

    return-object p0
.end method

.method public final M()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->M()Z

    move-result p0

    return p0
.end method

.method public final M0()I
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly1/a;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->M0()I

    move-result p0

    return p0
.end method

.method public final N()B
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->N()B

    move-result p0

    return p0
.end method

.method public final N0()I
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->N0()I

    move-result p0

    return p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->O0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->Q0()I

    move-result p0

    return p0
.end method

.method public final R0()J
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->R0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly1/a;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->S0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T0()Z
    .locals 0

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final U0()Z
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->U0()Z

    move-result p0

    return p0
.end method

.method public final V0(Lcom/fasterxml/jackson/core/JsonToken;)Z
    .locals 0

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final W0()Z
    .locals 2

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final a1()Z
    .locals 1

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->b0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    return-object p0
.end method

.method public final b1()Z
    .locals 1

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11

    sget-object v0, Ly1/c;->a:Ly1/c;

    iget-boolean v1, p0, Ly1/a;->d:Z

    const/4 v2, 0x0

    iget-object v3, p0, Ly1/a;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-nez v1, :cond_0

    iget-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    iget-object v4, p0, Ly1/a;->h:Ly1/d;

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-boolean v1, v1, Ly1/d;->g:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Ly1/a;->i:Ly1/c;

    if-ne v1, v0, :cond_0

    iput-object v2, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    :cond_0
    iget-object v1, p0, Ly1/a;->h:Ly1/d;

    if-eqz v1, :cond_a

    :goto_0
    invoke-virtual {v1}, Ly1/d;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-object v4, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v4

    :cond_1
    iget-object v4, p0, Ly1/a;->g:Ly1/d;

    if-ne v1, v4, :cond_5

    iput-object v2, p0, Ly1/a;->h:Ly1/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->w0()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v1, v1, Ly1/d;->c:Ly1/d;

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v1, v1, Ly1/d;->f:Ly1/c;

    iput-object v1, p0, Ly1/a;->i:Ly1/c;

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v2, Ly1/d;->c:Ly1/d;

    iput-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v2, Ly1/d;->f:Ly1/c;

    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    :cond_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_a

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_5
    iget-object v5, v4, Ly1/d;->c:Ly1/d;

    if-ne v5, v1, :cond_6

    move-object v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v5, :cond_8

    iget-object v4, v5, Ly1/d;->c:Ly1/d;

    if-ne v4, v1, :cond_7

    move-object v1, v5

    goto :goto_2

    :cond_7
    move-object v5, v4

    goto :goto_1

    :cond_8
    move-object v1, v2

    :goto_2
    iput-object v1, p0, Ly1/a;->h:Ly1/d;

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const-string v0, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_b

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v4, :cond_1c

    if-eq v2, v8, :cond_1b

    if-eq v2, v7, :cond_14

    if-eq v2, v6, :cond_1b

    if-eq v2, v5, :cond_e

    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_c

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_c
    if-eqz v2, :cond_23

    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-eq v2, v0, :cond_d

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ly1/c;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_d
    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v2

    if-eqz v2, :cond_23

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_e
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/g;->h0()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    iput-object v2, v10, Ly1/d;->e:Ljava/lang/String;

    iput-boolean v4, v10, Ly1/d;->h:Z

    iget-object v10, v10, Ly1/d;->f:Ly1/c;

    if-ne v10, v0, :cond_f

    iput-object v10, p0, Ly1/a;->i:Ly1/c;

    goto/16 :goto_8

    :cond_f
    if-nez v10, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v10, v2}, Ly1/c;->e(Ljava/lang/String;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_11

    :goto_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_5

    :cond_11
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_13

    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_13

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_12
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    :cond_13
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v3, v1, :cond_23

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_14
    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_15

    goto :goto_4

    :cond_15
    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_5

    :cond_17
    if-eq v2, v0, :cond_18

    invoke-virtual {v2}, Ly1/c;->b()Ly1/c;

    move-result-object v2

    :cond_18
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_19

    goto :goto_4

    :cond_19
    if-eqz v2, :cond_1a

    sget-object v10, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v10, :cond_1a

    :goto_4
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v0, v2, v4}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v0

    goto :goto_7

    :cond_1a
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v2, v9}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v1

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_23

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_1b
    iget-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-boolean v10, v2, Ly1/d;->g:Z

    iget-object v2, v2, Ly1/d;->c:Ly1/d;

    iput-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v2, Ly1/d;->f:Ly1/c;

    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-eqz v10, :cond_23

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_1c
    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_1d

    goto :goto_6

    :cond_1d
    if-nez v2, :cond_1e

    goto :goto_5

    :cond_1e
    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_1f

    :goto_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    goto :goto_9

    :cond_1f
    if-eq v2, v0, :cond_20

    invoke-virtual {v2}, Ly1/c;->c()Ly1/c;

    move-result-object v2

    :cond_20
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_21

    goto :goto_6

    :cond_21
    if-eqz v2, :cond_22

    sget-object v10, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v10, :cond_22

    :goto_6
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v0, v2, v4}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Ly1/a;->g:Ly1/d;

    :goto_8
    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_22
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v2, v9}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v1

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_23

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_23
    :goto_9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_24

    goto/16 :goto_f

    :cond_24
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    if-eq v2, v4, :cond_36

    if-eq v2, v8, :cond_35

    if-eq v2, v7, :cond_2e

    if-eq v2, v6, :cond_2d

    if-eq v2, v5, :cond_27

    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_25

    goto/16 :goto_f

    :cond_25
    if-eqz v2, :cond_23

    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-eq v2, v0, :cond_26

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ly1/c;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_26
    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v2

    if-eqz v2, :cond_23

    goto/16 :goto_f

    :cond_27
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/g;->h0()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    iput-object v2, v10, Ly1/d;->e:Ljava/lang/String;

    iput-boolean v4, v10, Ly1/d;->h:Z

    iget-object v10, v10, Ly1/d;->f:Ly1/c;

    if-ne v10, v0, :cond_28

    iput-object v10, p0, Ly1/a;->i:Ly1/c;

    goto/16 :goto_f

    :cond_28
    if-nez v10, :cond_29

    goto :goto_a

    :cond_29
    invoke-virtual {v10, v2}, Ly1/c;->e(Ljava/lang/String;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_2a
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_2c

    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_23

    goto/16 :goto_f

    :cond_2b
    :goto_a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_c

    :cond_2c
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v3, v1, :cond_23

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    goto/16 :goto_f

    :cond_2d
    iget-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-boolean v10, v2, Ly1/d;->g:Z

    iget-object v2, v2, Ly1/d;->c:Ly1/d;

    iput-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v2, Ly1/d;->f:Ly1/c;

    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-eqz v10, :cond_23

    goto/16 :goto_f

    :cond_2e
    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_2f

    goto :goto_b

    :cond_2f
    if-nez v2, :cond_30

    goto :goto_c

    :cond_30
    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_31

    goto :goto_c

    :cond_31
    if-eq v2, v0, :cond_32

    invoke-virtual {v2}, Ly1/c;->b()Ly1/c;

    move-result-object v2

    :cond_32
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_33

    goto :goto_b

    :cond_33
    if-eqz v2, :cond_34

    sget-object v10, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v10, :cond_34

    :goto_b
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v0, v2, v4}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v0

    goto :goto_e

    :cond_34
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v2, v9}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v1

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_23

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    goto :goto_f

    :cond_35
    iget-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-boolean v10, v2, Ly1/d;->g:Z

    iget-object v2, v2, Ly1/d;->c:Ly1/d;

    iput-object v2, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v2, Ly1/d;->f:Ly1/c;

    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-eqz v10, :cond_23

    goto :goto_f

    :cond_36
    iget-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_37

    goto :goto_d

    :cond_37
    if-nez v2, :cond_38

    goto :goto_c

    :cond_38
    iget-object v10, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v10, v2}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v2

    if-nez v2, :cond_39

    :goto_c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    goto/16 :goto_9

    :cond_39
    if-eq v2, v0, :cond_3a

    invoke-virtual {v2}, Ly1/c;->c()Ly1/c;

    move-result-object v2

    :cond_3a
    iput-object v2, p0, Ly1/a;->i:Ly1/c;

    if-ne v2, v0, :cond_3b

    goto :goto_d

    :cond_3b
    if-eqz v2, :cond_3c

    sget-object v10, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v10, :cond_3c

    :goto_d
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v0, v2, v4}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Ly1/a;->g:Ly1/d;

    goto :goto_f

    :cond_3c
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v2, v9}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v1

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v3, v2, :cond_23

    invoke-virtual {p0, v1}, Ly1/a;->p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_23

    :goto_f
    iput-object v1, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1
.end method

.method public final h0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly1/a;->h:Ly1/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    :goto_0
    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Ly1/d;->e:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, v0, Ly1/d;->c:Ly1/d;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Ly1/d;->e:Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/g;->i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I

    move-result p0

    return p0
.end method

.method public final n1()Lcom/fasterxml/jackson/core/g;
    .locals 3

    iget-object v0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ly1/a;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0
.end method

.method public final o1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iput-object p1, p0, Ly1/a;->h:Ly1/d;

    invoke-virtual {p1}, Ly1/d;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Ly1/a;->h:Ly1/d;

    iget-object v1, v0, Ly1/d;->c:Ly1/d;

    if-ne v1, p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, v1, Ly1/d;->c:Ly1/d;

    if-ne v0, p1, :cond_2

    move-object p1, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Ly1/a;->h:Ly1/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ly1/d;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_4
    const-string p1, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_5
    const-string p1, "Internal error: failed to locate expected buffered tokens"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final p1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    sget-object v2, Ly1/c;->a:Ly1/c;

    const/4 v3, 0x1

    iget-object v4, p0, Ly1/a;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    const/4 v5, 0x0

    if-eq v1, v3, :cond_16

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v1, v6, :cond_12

    const/4 v6, 0x3

    if-eq v1, v6, :cond_d

    const/4 v4, 0x4

    if-eq v1, v4, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Ly1/a;->i:Ly1/c;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Ly1/a;->o1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v0}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v0

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ly1/a;->o1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->h0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iput-object v0, v1, Ly1/d;->e:Ljava/lang/String;

    iput-boolean v3, v1, Ly1/d;->h:Z

    iget-object v1, v1, Ly1/d;->f:Ly1/c;

    if-ne v1, v2, :cond_5

    iput-object v1, p0, Ly1/a;->i:Ly1/c;

    goto/16 :goto_9

    :cond_5
    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Ly1/c;->e(Ljava/lang/String;)Ly1/c;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_6

    :cond_7
    iput-object v1, p0, Ly1/a;->i:Ly1/c;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ly1/a;->q1()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Ly1/a;->o1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iput-object v0, v1, Ly1/d;->e:Ljava/lang/String;

    iput-boolean v3, v1, Ly1/d;->h:Z

    iget-object v0, v1, Ly1/d;->f:Ly1/c;

    iput-object v0, p0, Ly1/a;->i:Ly1/c;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v1, Ly1/d;->f:Ly1/c;

    if-ne v1, p1, :cond_a

    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v5

    :goto_2
    if-eqz v2, :cond_b

    iget-boolean v4, v1, Ly1/d;->g:Z

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    move v3, v5

    :goto_3
    iget-object v1, v1, Ly1/d;->c:Ly1/d;

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v1, v1, Ly1/d;->f:Ly1/c;

    iput-object v1, p0, Ly1/a;->i:Ly1/c;

    if-eqz v3, :cond_c

    return-object v0

    :cond_c
    if-eqz v2, :cond_0

    return-object v7

    :cond_d
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    iget-object v1, p0, Ly1/a;->i:Ly1/c;

    invoke-virtual {v0, v1}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    if-eq v0, v2, :cond_f

    invoke-virtual {v0}, Ly1/c;->b()Ly1/c;

    move-result-object v0

    :cond_f
    iput-object v0, p0, Ly1/a;->i:Ly1/c;

    if-ne v0, v2, :cond_10

    goto/16 :goto_7

    :cond_10
    if-eqz v0, :cond_11

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v1, :cond_11

    goto :goto_7

    :cond_11
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v0, v5}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v0

    goto/16 :goto_a

    :cond_12
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v2, v1, Ly1/d;->f:Ly1/c;

    if-ne v1, p1, :cond_13

    move v2, v3

    goto :goto_4

    :cond_13
    move v2, v5

    :goto_4
    if-eqz v2, :cond_14

    iget-boolean v4, v1, Ly1/d;->g:Z

    if-eqz v4, :cond_14

    goto :goto_5

    :cond_14
    move v3, v5

    :goto_5
    iget-object v1, v1, Ly1/d;->c:Ly1/d;

    iput-object v1, p0, Ly1/a;->g:Ly1/d;

    iget-object v1, v1, Ly1/d;->f:Ly1/c;

    iput-object v1, p0, Ly1/a;->i:Ly1/c;

    if-eqz v3, :cond_15

    return-object v0

    :cond_15
    if-eqz v2, :cond_0

    return-object v7

    :cond_16
    iget-object v1, p0, Ly1/a;->i:Ly1/c;

    if-ne v1, v2, :cond_17

    iget-object p1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {p1, v1, v3}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object p1

    iput-object p1, p0, Ly1/a;->g:Ly1/d;

    return-object v0

    :cond_17
    if-nez v1, :cond_18

    goto :goto_6

    :cond_18
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v0, v1}, Ly1/d;->k(Ly1/c;)Ly1/c;

    move-result-object v0

    if-nez v0, :cond_19

    :goto_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/g;->n1()Lcom/fasterxml/jackson/core/g;

    goto/16 :goto_0

    :cond_19
    if-eq v0, v2, :cond_1a

    invoke-virtual {v0}, Ly1/c;->c()Ly1/c;

    move-result-object v0

    :cond_1a
    iput-object v0, p0, Ly1/a;->i:Ly1/c;

    if-ne v0, v2, :cond_1b

    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v0, v3}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v0

    goto :goto_8

    :cond_1b
    if-eqz v0, :cond_1c

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v1, :cond_1c

    :goto_7
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v0, v3}, Ly1/d;->l(Ly1/c;Z)Ly1/d;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Ly1/a;->g:Ly1/d;

    :goto_9
    invoke-virtual {p0, p1}, Ly1/a;->o1(Ly1/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1c
    iget-object v1, p0, Ly1/a;->g:Ly1/d;

    invoke-virtual {v1, v0, v5}, Ly1/d;->m(Ly1/c;Z)Ly1/d;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Ly1/a;->g:Ly1/d;

    goto/16 :goto_0
.end method

.method public final q1()Z
    .locals 2

    iget v0, p0, Ly1/a;->j:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ly1/a;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ly1/a;->j:I

    return v1
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly1/a;->h:Ly1/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/a;->g:Ly1/d;

    :goto_0
    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Ly1/d;->e:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, v0, Ly1/d;->c:Ly1/d;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Ly1/d;->e:Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public final w0()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final x()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public final x0()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->x0()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final y()I
    .locals 0

    iget-object p0, p0, Ly1/a;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final y0()D
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->y0()D

    move-result-wide v0

    return-wide v0
.end method

.method public final z0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/h;->c:Lcom/fasterxml/jackson/core/g;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->z0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
