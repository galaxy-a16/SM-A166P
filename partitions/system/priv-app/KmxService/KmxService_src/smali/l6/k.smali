.class public final Ll6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Landroidx/recyclerview/widget/s0;


# instance fields
.field public a:Ll6/k;

.field public b:Lf6/f;

.field public c:Lcom/fasterxml/jackson/databind/deser/j;

.field public d:Ll6/k;

.field public e:Lv7/w;

.field public f:Lv7/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/s0;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Ll6/k;->g:Landroidx/recyclerview/widget/s0;

    return-void
.end method

.method public constructor <init>(Ll6/k;Lf6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/k;->a:Ll6/k;

    iput-object p2, p0, Ll6/k;->b:Lf6/f;

    return-void
.end method

.method public static a(Ll6/g;Lv7/w;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/g;->e:Z

    iget-object p1, p1, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast p1, Ll6/j;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ll6/j;->f:Ll6/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ll6/g;->d(Ll6/a;)Lv7/c;

    :cond_0
    iget-object p1, p1, Ld/g0;->b:Ljava/lang/Object;

    check-cast p1, Ld/g0;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ll6/k;Lf6/e;)Ll6/k;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Ll6/k;->b:Lf6/f;

    instance-of v2, v1, Lf6/g;

    if-eqz v2, :cond_b

    check-cast v1, Lf6/g;

    invoke-virtual {p1}, Lf6/e;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_5

    :cond_1
    iget v2, p1, Lf6/e;->d:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iget v5, v1, Lf6/g;->c:I

    add-int/2addr v5, v4

    :goto_0
    iget v6, p1, Lf6/e;->e:I

    if-ne v2, v6, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    iget-object v8, v1, Lu7/a;->a:[B

    array-length v9, v8

    if-ne v5, v9, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v3

    :goto_2
    const/16 v10, 0x2f

    iget-object v11, p1, Lu7/a;->a:[B

    if-eqz v9, :cond_5

    if-nez v7, :cond_4

    aget-byte v1, v11, v2

    if-ne v1, v10, :cond_9

    :cond_4
    iput v2, p1, Lf6/e;->d:I

    iput v2, p1, Lf6/e;->c:I

    move v3, v4

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    aget-byte v7, v8, v5

    aget-byte v8, v11, v2

    if-ne v8, v7, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_9

    :goto_3
    if-ge v2, v6, :cond_8

    aget-byte v7, v11, v2

    if-eq v7, v10, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    return-object p0
.end method

.method public static f(Lv7/w;Lf6/f;ZLjava/util/TreeMap;)V
    .locals 12

    iget-object p0, p0, Lv7/w;->b:Ld/g0;

    check-cast p0, Ll6/j;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_1a

    iget-boolean v2, p0, Ll6/j;->h:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    iget-object v3, p0, Ll6/j;->e:[B

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    goto/16 :goto_d

    :cond_0
    move v1, v2

    :cond_1
    if-eqz v3, :cond_2

    array-length v4, v3

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v5, p1, Lu7/a;->a:[B

    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/2addr v4, v2

    :cond_5
    new-array v5, v4, [B

    const/16 v6, 0x2f

    if-eqz v3, :cond_6

    array-length v7, v3

    invoke-static {v3, v0, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v0

    aput-byte v6, v5, v3

    add-int/2addr v3, v2

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    if-eqz p1, :cond_7

    iget-object v7, p1, Lu7/a;->a:[B

    array-length v8, v7

    invoke-static {v7, v0, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v3, v7

    :cond_7
    const/16 v7, 0x23

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8
    aput-byte v7, v5, v3

    :cond_9
    sget v3, Lf6/c;->f:I

    if-eqz v4, :cond_16

    const v3, 0xffff

    if-gt v4, v3, :cond_a

    move v3, v2

    goto :goto_3

    :cond_a
    move v3, v0

    :goto_3
    if-eqz v3, :cond_16

    invoke-static {v5}, Lf6/j;->f([B)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    const/4 v3, 0x7

    if-ge v4, v3, :cond_c

    goto :goto_5

    :cond_c
    move v8, v0

    :goto_4
    if-ge v8, v3, :cond_e

    aget-byte v9, v5, v8

    const-string v10, "$share/"

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_d

    :goto_5
    move v8, v0

    goto :goto_6

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    move v8, v2

    :goto_6
    const/4 v9, -0x1

    if-eqz v8, :cond_14

    move v8, v3

    :goto_7
    if-ge v8, v4, :cond_11

    aget-byte v10, v5, v8

    if-ne v10, v6, :cond_f

    goto :goto_8

    :cond_f
    if-eq v10, v7, :cond_16

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    if-eq v8, v3, :cond_16

    add-int/lit8 v4, v4, -0x1

    if-lt v8, v4, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v3, v8, 0x1

    invoke-static {v3, v5}, Lf6/c;->l(I[B)I

    move-result v3

    if-ne v3, v9, :cond_13

    goto :goto_9

    :cond_13
    new-instance v4, Lf6/b;

    invoke-direct {v4, v5, v8, v3}, Lf6/b;-><init>([BII)V

    goto :goto_a

    :cond_14
    invoke-static {v0, v5}, Lf6/c;->l(I[B)I

    move-result v3

    if-ne v3, v9, :cond_15

    goto :goto_9

    :cond_15
    new-instance v4, Lf6/c;

    invoke-direct {v4, v5, v3}, Lf6/c;-><init>([BI)V

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v4, 0x0

    :goto_a
    move-object v6, v4

    iget-byte v3, p0, Ll6/j;->d:B

    and-int/lit8 v4, v3, 0x3

    invoke-static {v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v7

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_17

    move v8, v2

    goto :goto_b

    :cond_17
    move v8, v0

    :goto_b
    and-int/lit8 v4, v3, 0x30

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object v9

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_18

    move v10, v2

    goto :goto_c

    :cond_18
    move v10, v0

    :goto_c
    new-instance v2, Ll7/c;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Ll7/c;-><init>(Lf6/c;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    iget v3, p0, Ll6/j;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_d
    iget-object p0, p0, Ld/g0;->a:Ljava/lang/Object;

    check-cast p0, Ld/g0;

    check-cast p0, Ll6/j;

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public static h(Lv7/w;Lf6/c;IZ)Z
    .locals 3

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lf6/c;->i()[B

    move-result-object p1

    iget-object v0, p0, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast v0, Ll6/j;

    if-eqz v0, :cond_3

    iget v1, v0, Ll6/j;->c:I

    if-ne v1, p2, :cond_2

    iget-object v1, v0, Ll6/j;->e:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll6/j;->h:Z

    goto :goto_1

    :cond_0
    iget-object v1, v0, Ll6/j;->f:Ll6/h;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ll6/h;->q:Lv7/d;

    iget-object v2, v0, Ll6/j;->g:Lv7/c;

    invoke-virtual {v1, v2}, Lv7/w;->c(Ld/g0;)V

    :cond_1
    invoke-virtual {p0, v0}, Lv7/w;->c(Ld/g0;)V

    :cond_2
    :goto_1
    iget-object v0, v0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v0, Ld/g0;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lv7/w;->b()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ll6/k;Lf6/e;)Ll6/k;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Ll6/k;->b:Lf6/f;

    instance-of v2, v1, Lf6/g;

    if-eqz v2, :cond_8

    check-cast v1, Lf6/g;

    iget-object v2, v1, Lu7/a;->a:[B

    iget v3, p1, Lf6/e;->d:I

    array-length v4, v2

    add-int/2addr v4, v3

    iget v1, v1, Lf6/g;->c:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    iget v6, p1, Lf6/e;->e:I

    if-gt v4, v6, :cond_6

    iget-object v7, p1, Lu7/a;->a:[B

    if-eq v4, v6, :cond_1

    aget-byte v6, v7, v4

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_6

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/2addr v1, v6

    array-length v8, v2

    sub-int v9, v4, v3

    sub-int/2addr v8, v1

    if-eq v9, v8, :cond_2

    :goto_0
    move v1, v5

    goto :goto_3

    :cond_2
    if-ne v7, v2, :cond_3

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-ge v3, v4, :cond_5

    aget-byte v8, v7, v3

    aget-byte v9, v2, v1

    if-eq v8, v9, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v6

    :goto_3
    if-eqz v1, :cond_6

    iput v4, p1, Lf6/e;->d:I

    iput v4, p1, Lf6/e;->c:I

    move v5, v6

    :cond_6
    if-eqz v5, :cond_7

    return-object p0

    :cond_7
    return-object v0

    :cond_8
    return-object p0
.end method

.method public static k(Lv7/w;Lf6/c;)Z
    .locals 3

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lf6/c;->i()[B

    move-result-object p1

    iget-object v0, p0, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast v0, Ll6/j;

    if-eqz v0, :cond_2

    iget-object v1, v0, Ll6/j;->e:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Ll6/j;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Ll6/j;->f:Ll6/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ll6/h;->q:Lv7/d;

    iget-object v2, v0, Ll6/j;->g:Lv7/c;

    invoke-virtual {v1, v2}, Lv7/w;->c(Ld/g0;)V

    iget-object v1, v0, Ll6/j;->f:Ll6/h;

    iget-object v1, v1, Ll6/h;->q:Lv7/d;

    invoke-virtual {v1}, Lv7/w;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ll6/j;->f:Ll6/h;

    invoke-virtual {v1}, Ll6/a;->onComplete()V

    :cond_0
    invoke-virtual {p0, v0}, Lv7/w;->c(Ld/g0;)V

    :cond_1
    iget-object v0, v0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v0, Ld/g0;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lv7/w;->b()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Ll6/k;->a:Ll6/k;

    if-eqz v0, :cond_4

    iget-object v1, p0, Ll6/k;->e:Lv7/w;

    if-nez v1, :cond_4

    iget-object v1, p0, Ll6/k;->f:Lv7/w;

    if-nez v1, :cond_4

    iget-object v1, p0, Ll6/k;->d:Ll6/k;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Ll6/k;->g(Ll6/k;)V

    iget-object p0, p0, Ll6/k;->a:Ll6/k;

    invoke-virtual {p0}, Ll6/k;->b()V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ll6/k;->e(Ll6/k;)V

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/j;->p()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/k;

    invoke-virtual {p0, v0}, Ll6/k;->e(Ll6/k;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final c(Lf6/e;Ll6/g;)Ll6/k;
    .locals 6

    invoke-virtual {p1}, Lf6/e;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ll6/k;->f:Lv7/w;

    invoke-static {p2, v0}, Ll6/k;->a(Ll6/g;Lv7/w;)V

    invoke-virtual {p1}, Lf6/e;->g()V

    iget-object v0, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ll6/k;

    :goto_0
    iget-object p0, p0, Ll6/k;->d:Ll6/k;

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Ll6/k;->d(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {v1, p1}, Ll6/k;->d(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lf6/e;

    iget v2, p1, Lf6/e;->c:I

    iget v3, p1, Lf6/e;->d:I

    iget v4, p1, Lf6/e;->e:I

    iget-object v5, p1, Lu7/a;->a:[B

    invoke-direct {v0, v5, v2, v3, v4}, Lf6/e;-><init>([BIII)V

    invoke-static {v1, p1}, Ll6/k;->d(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Ll6/k;->d(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, v0}, Ll6/k;->d(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0, v0, p2}, Ll6/k;->c(Lf6/e;Ll6/g;)Ll6/k;

    move-result-object p0

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    iget-object p1, p0, Ll6/k;->e:Lv7/w;

    invoke-static {p2, p1}, Ll6/k;->a(Ll6/g;Lv7/w;)V

    iget-object p0, p0, Ll6/k;->f:Lv7/w;

    invoke-static {p2, p0}, Ll6/k;->a(Ll6/g;Lv7/w;)V

    return-object v1
.end method

.method public final e(Ll6/k;)V
    .locals 2

    iget-object v0, p0, Ll6/k;->a:Ll6/k;

    iget-object p0, p0, Ll6/k;->b:Lf6/f;

    iget-object v1, p1, Ll6/k;->b:Lf6/f;

    invoke-static {p0, v1}, Lf6/g;->f(Lf6/f;Lf6/f;)Lf6/g;

    move-result-object p0

    iput-object v0, p1, Ll6/k;->a:Ll6/k;

    iput-object p0, p1, Ll6/k;->b:Lf6/f;

    invoke-virtual {p0}, Lf6/f;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p1, v0, Ll6/k;->d:Ll6/k;

    goto :goto_0

    :cond_0
    iget-object p0, v0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final g(Ll6/k;)V
    .locals 2

    iget-object v0, p1, Ll6/k;->b:Lf6/f;

    invoke-virtual {v0}, Lf6/f;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Ll6/k;->d:Ll6/k;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    iget-object p1, p1, Ll6/k;->b:Lf6/f;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->m(Ljava/lang/Object;)V

    iget-object p1, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->p()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Lf6/e;)Ll6/k;
    .locals 1

    invoke-virtual {p1}, Lf6/e;->g()V

    invoke-virtual {p1}, Lf6/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll6/k;->d:Ll6/k;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll6/k;

    :goto_0
    invoke-static {p0, p1}, Ll6/k;->j(Ll6/k;Lf6/e;)Ll6/k;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
