.class public final Lcom/fasterxml/jackson/databind/deser/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/lang/Object;

.field public f:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/s0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    .line 2
    iget p1, p1, Landroidx/recyclerview/widget/s0;->a:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/s0;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    iget p1, p1, Landroidx/recyclerview/widget/s0;->a:I

    add-int/lit8 p1, p1, -0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    shl-int p1, p2, p1

    .line 6
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    return-void

    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget v6, v0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    if-le v2, v6, :cond_d

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v2, [Ljava/lang/Object;

    array-length v6, v2

    if-ge v6, v5, :cond_d

    array-length v5, v2

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v6, -0x1

    new-array v8, v6, [Ljava/lang/Object;

    move v9, v4

    :goto_0
    if-ge v4, v5, :cond_c

    aget-object v10, v2, v4

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lv7/u;

    if-ne v11, v12, :cond_9

    check-cast v10, Lv7/u;

    add-int v11, v4, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    iget v1, v10, Lv7/u;->a:I

    and-int/2addr v1, v7

    if-ne v1, v4, :cond_1

    if-nez v14, :cond_0

    aput-object v10, v8, v4

    move-object/from16 v14, v16

    goto :goto_2

    :cond_0
    iput-object v10, v14, Lv7/u;->c:Ljava/lang/Object;

    :goto_2
    move-object v1, v14

    move-object v14, v10

    goto :goto_4

    :cond_1
    if-nez v13, :cond_2

    aput-object v10, v8, v11

    move-object v13, v15

    goto :goto_3

    :cond_2
    iput-object v10, v13, Lv7/u;->c:Ljava/lang/Object;

    :goto_3
    move-object v15, v13

    move-object/from16 v1, v16

    move-object v13, v10

    :goto_4
    add-int/lit8 v9, v9, 0x1

    iget-object v10, v10, Lv7/u;->c:Ljava/lang/Object;

    move-object/from16 v16, v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v12, :cond_3

    check-cast v10, Lv7/u;

    move-object/from16 v2, v16

    move-object/from16 v16, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget-object v2, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/2addr v2, v7

    if-ne v2, v4, :cond_6

    if-nez v14, :cond_4

    aput-object v10, v8, v4

    goto :goto_5

    :cond_4
    iput-object v10, v14, Lv7/u;->c:Ljava/lang/Object;

    :goto_5
    if-eqz v13, :cond_b

    iget-object v1, v13, Lv7/u;->b:Ljava/lang/Object;

    if-nez v15, :cond_5

    aput-object v1, v8, v11

    goto :goto_7

    :cond_5
    iput-object v1, v15, Lv7/u;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_6
    if-nez v13, :cond_7

    aput-object v10, v8, v11

    goto :goto_6

    :cond_7
    iput-object v10, v13, Lv7/u;->c:Ljava/lang/Object;

    :goto_6
    if-eqz v14, :cond_b

    iget-object v2, v14, Lv7/u;->b:Ljava/lang/Object;

    if-nez v1, :cond_8

    aput-object v2, v8, v4

    goto :goto_7

    :cond_8
    iput-object v2, v1, Lv7/u;->c:Ljava/lang/Object;

    :goto_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_9
    move-object/from16 v16, v2

    move-object v1, v3

    check-cast v1, Landroidx/recyclerview/widget/s0;

    iget-object v1, v1, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/2addr v1, v7

    aput-object v10, v8, v1

    goto :goto_8

    :cond_a
    move-object/from16 v16, v2

    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_c
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput v9, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    :cond_d
    return-void

    :goto_9
    iget v1, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget v2, v0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    if-le v1, v2, :cond_1b

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-ge v2, v5, :cond_1b

    array-length v2, v1

    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    new-array v7, v5, [Ljava/lang/Object;

    move v8, v4

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v9, v1, v4

    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lv7/v;

    if-ne v10, v11, :cond_17

    check-cast v9, Lv7/v;

    add-int v10, v4, v2

    move-object/from16 v16, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    iget v1, v9, Lv7/v;->a:I

    and-int/2addr v1, v6

    if-ne v1, v4, :cond_f

    if-nez v13, :cond_e

    aput-object v9, v7, v4

    move-object v13, v15

    goto :goto_c

    :cond_e
    iput-object v9, v13, Lv7/v;->c:Ljava/lang/Object;

    :goto_c
    move-object v15, v13

    move-object v13, v9

    goto :goto_e

    :cond_f
    if-nez v12, :cond_10

    aput-object v9, v7, v10

    move-object v12, v14

    goto :goto_d

    :cond_10
    iput-object v9, v12, Lv7/v;->c:Ljava/lang/Object;

    :goto_d
    move-object v14, v12

    move-object v12, v9

    :goto_e
    add-int/lit8 v8, v8, 0x1

    iget-object v1, v9, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v11, :cond_11

    move-object v9, v1

    check-cast v9, Lv7/v;

    goto :goto_b

    :cond_11
    move-object v9, v3

    check-cast v9, Landroidx/recyclerview/widget/s0;

    iget-object v9, v9, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v9, Ljava/util/function/ToIntFunction;

    invoke-interface {v9, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v9

    and-int/2addr v9, v6

    if-ne v9, v4, :cond_14

    if-nez v13, :cond_12

    aput-object v1, v7, v4

    goto :goto_f

    :cond_12
    iput-object v1, v13, Lv7/v;->c:Ljava/lang/Object;

    :goto_f
    if-eqz v12, :cond_19

    iget-object v1, v12, Lv7/v;->b:Ljava/lang/Object;

    if-nez v14, :cond_13

    aput-object v1, v7, v10

    goto :goto_11

    :cond_13
    iput-object v1, v14, Lv7/v;->c:Ljava/lang/Object;

    goto :goto_11

    :cond_14
    if-nez v12, :cond_15

    aput-object v1, v7, v10

    goto :goto_10

    :cond_15
    iput-object v1, v12, Lv7/v;->c:Ljava/lang/Object;

    :goto_10
    if-eqz v13, :cond_19

    iget-object v1, v13, Lv7/v;->b:Ljava/lang/Object;

    if-nez v15, :cond_16

    aput-object v1, v7, v4

    goto :goto_11

    :cond_16
    iput-object v1, v15, Lv7/v;->c:Ljava/lang/Object;

    :goto_11
    add-int/lit8 v8, v8, -0x1

    goto :goto_12

    :cond_17
    move-object/from16 v16, v1

    move-object v1, v3

    check-cast v1, Landroidx/recyclerview/widget/s0;

    iget-object v1, v1, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/ToIntFunction;

    invoke-interface {v1, v9}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v6

    aput-object v9, v7, v1

    goto :goto_12

    :cond_18
    move-object/from16 v16, v1

    :cond_19
    :goto_12
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_a

    :cond_1a
    iput-object v7, v0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput v8, v0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    :cond_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lv7/u;

    if-ne p0, v0, :cond_0

    check-cast v2, Lv7/u;

    iget-object p0, v2, Lv7/u;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final d(I)V
    .locals 3

    const/high16 v0, 0x3e800000    # 0.25f

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float p1, p1

    check-cast v2, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    return-void

    :goto_0
    int-to-float p1, p1

    check-cast v2, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget v3, v2, Landroidx/recyclerview/widget/s0;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget v0, v2, Landroidx/recyclerview/widget/s0;->a:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    const-string v2, "..."

    const-string v3, ""

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    if-le v5, v6, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    if-lez v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/2addr v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    sub-int/2addr v1, p0

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    aget-object v0, v0, v2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lv7/u;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    :goto_0
    check-cast v0, Lv7/u;

    iget v3, v0, Lv7/u;->a:I

    if-ne v3, v1, :cond_1

    move-object v3, p0

    check-cast v3, Landroidx/recyclerview/widget/s0;

    iget-object v3, v3, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/Function;

    iget-object v5, v0, Lv7/u;->b:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v0, Lv7/u;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v0, v0, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Function;

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Function;

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    return-object v2
.end method

.method public final h()Z
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v4, [B

    array-length v5, v4

    sub-int/2addr v5, v0

    if-ge v5, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    :goto_1
    return v2
.end method

.method public final i()B
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed auto-detect: could not read more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes (max buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast p0, [B

    array-length p0, p0

    const-string v2, ")"

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [B

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/j;->k(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/j;->k(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget-object v3, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/Function;

    invoke-interface {v3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v4

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    aput-object p1, v0, v5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->a()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v2, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    const-class v8, Lv7/u;

    if-ne v7, v8, :cond_5

    check-cast v6, Lv7/u;

    :goto_0
    iget v0, v6, Lv7/u;->a:I

    if-ne v0, v4, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/util/function/Function;

    iget-object v5, v6, Lv7/u;->b:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, v6, Lv7/u;->b:Ljava/lang/Object;

    if-eqz p2, :cond_8

    iput-object p1, v6, Lv7/u;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v0, v6, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v8, :cond_2

    move-object v6, v0

    check-cast v6, Lv7/u;

    goto :goto_0

    :cond_2
    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    iput-object p1, v6, Lv7/u;->c:Ljava/lang/Object;

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    new-instance p2, Lv7/u;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p2, v2, v0, p1}, Lv7/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v6, Lv7/u;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    aput-object p1, v0, v5

    :cond_6
    move-object v1, v6

    goto :goto_2

    :cond_7
    new-instance p2, Lv7/u;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p2, v2, v6, p1}, Lv7/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v5

    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->a()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->b()V

    :cond_8
    :goto_2
    return-object v1

    :goto_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget-object v3, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/ToIntFunction;

    invoke-interface {v3, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v3

    aget-object v5, v0, v4

    if-nez v5, :cond_9

    aput-object p1, v0, v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->a()V

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v2, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    const-class v7, Lv7/v;

    if-ne v6, v7, :cond_e

    check-cast v5, Lv7/v;

    :goto_4
    iget v0, v5, Lv7/v;->a:I

    if-ne v0, v3, :cond_a

    iget-object v1, v5, Lv7/v;->b:Ljava/lang/Object;

    if-eqz p2, :cond_11

    iput-object p1, v5, Lv7/v;->b:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    iget-object v0, v5, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v7, :cond_b

    move-object v5, v0

    check-cast v5, Lv7/v;

    goto :goto_4

    :cond_b
    check-cast v2, Ljava/util/function/ToIntFunction;

    invoke-interface {v2, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v3, :cond_d

    if-eqz p2, :cond_c

    iput-object p1, v5, Lv7/v;->c:Ljava/lang/Object;

    :cond_c
    move-object v1, v0

    goto :goto_6

    :cond_d
    new-instance p2, Lv7/v;

    invoke-direct {p2, v2, v0, p1}, Lv7/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v5, Lv7/v;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_e
    check-cast v2, Ljava/util/function/ToIntFunction;

    invoke-interface {v2, v5}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v3, :cond_10

    if-eqz p2, :cond_f

    aput-object p1, v0, v4

    :cond_f
    move-object v1, v5

    goto :goto_6

    :cond_10
    new-instance p2, Lv7/v;

    invoke-direct {p2, v2, v5, p1}, Lv7/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v4

    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->a()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->b()V

    :cond_11
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    const-class v6, Lv7/v;

    if-ne v4, v6, :cond_7

    check-cast v2, Lv7/v;

    iget v4, v2, Lv7/v;->a:I

    if-ne v4, p1, :cond_1

    iget-object p1, v2, Lv7/v;->c:Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->o()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->n()V

    iget-object p0, v2, Lv7/v;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v4, v2, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v6, :cond_3

    check-cast v5, Landroidx/recyclerview/widget/s0;

    iget-object v5, v5, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/function/ToIntFunction;

    invoke-interface {v5, v4}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_2

    iget-object p1, v2, Lv7/v;->b:Ljava/lang/Object;

    aput-object p1, v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->o()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->n()V

    return-object v4

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    move-object v0, v4

    check-cast v0, Lv7/v;

    iget v1, v0, Lv7/v;->a:I

    if-ne v1, p1, :cond_4

    iget-object p1, v0, Lv7/v;->c:Ljava/lang/Object;

    iput-object p1, v2, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->o()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->n()V

    iget-object p0, v0, Lv7/v;->b:Ljava/lang/Object;

    return-object p0

    :cond_4
    iget-object v4, v0, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v6, :cond_6

    check-cast v5, Landroidx/recyclerview/widget/s0;

    iget-object v1, v5, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/ToIntFunction;

    invoke-interface {v1, v4}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p1, :cond_5

    iget-object p1, v0, Lv7/v;->b:Ljava/lang/Object;

    iput-object p1, v2, Lv7/v;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v0

    goto :goto_1

    :cond_7
    check-cast v5, Landroidx/recyclerview/widget/s0;

    iget-object v4, v5, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/ToIntFunction;

    invoke-interface {v4, v2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_8

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->n()V

    return-object v2

    :cond_8
    return-object v3
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lv7/u;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    if-ne v4, v5, :cond_7

    check-cast v3, Lv7/u;

    iget v4, v3, Lv7/u;->a:I

    if-ne v4, v1, :cond_1

    move-object v4, v6

    check-cast v4, Landroidx/recyclerview/widget/s0;

    iget-object v4, v4, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Function;

    iget-object v7, v3, Lv7/u;->b:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, v3, Lv7/u;->c:Ljava/lang/Object;

    aput-object p1, v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->o()V

    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->n()V

    return-void

    :cond_1
    iget-object v4, v3, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v5, :cond_3

    check-cast v6, Landroidx/recyclerview/widget/s0;

    iget-object v1, v6, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v3, Lv7/u;->b:Ljava/lang/Object;

    aput-object p1, v0, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    move-object v0, v4

    check-cast v0, Lv7/u;

    iget v2, v0, Lv7/u;->a:I

    if-ne v2, v1, :cond_4

    move-object v2, v6

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget-object v2, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Function;

    iget-object v4, v0, Lv7/u;->b:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, v0, Lv7/u;->c:Ljava/lang/Object;

    :goto_3
    iput-object p1, v3, Lv7/u;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v5, :cond_6

    check-cast v6, Landroidx/recyclerview/widget/s0;

    iget-object v1, v6, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lv7/u;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    move-object v3, v0

    goto :goto_2

    :cond_7
    check-cast v6, Landroidx/recyclerview/widget/s0;

    iget-object v1, v6, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    aput-object p1, v0, v2

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final n()V
    .locals 13

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget v4, v2, Landroidx/recyclerview/widget/s0;->a:I

    if-le v3, v4, :cond_5

    array-length v3, v0

    shr-int/lit8 v4, v3, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v7, v0, v1

    if-eqz v7, :cond_3

    sub-int v8, v1, v4

    aget-object v9, v5, v8

    if-nez v9, :cond_0

    aput-object v7, v5, v8

    goto :goto_3

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    const-class v12, Lv7/u;

    if-ne v10, v12, :cond_2

    check-cast v9, Lv7/u;

    :goto_1
    iget-object v8, v9, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v12, :cond_1

    move-object v9, v8

    check-cast v9, Lv7/u;

    goto :goto_1

    :cond_1
    new-instance v10, Lv7/u;

    check-cast v11, Ljava/util/function/Function;

    invoke-interface {v11, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-direct {v10, v11, v8, v7}, Lv7/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v9, Lv7/u;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance v10, Lv7/u;

    check-cast v11, Ljava/util/function/Function;

    invoke-interface {v11, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-direct {v10, v11, v9, v7}, Lv7/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-object v5, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    :cond_5
    return-void

    :goto_4
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    if-ge v0, v3, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    check-cast v2, Landroidx/recyclerview/widget/s0;

    iget v4, v2, Landroidx/recyclerview/widget/s0;->a:I

    if-le v3, v4, :cond_b

    array-length v3, v0

    shr-int/lit8 v4, v3, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_5
    if-ge v1, v3, :cond_a

    aget-object v7, v0, v1

    if-eqz v7, :cond_9

    sub-int v8, v1, v4

    aget-object v9, v5, v8

    if-nez v9, :cond_6

    aput-object v7, v5, v8

    goto :goto_8

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, v2, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    const-class v12, Lv7/v;

    if-ne v10, v12, :cond_8

    check-cast v9, Lv7/v;

    :goto_6
    iget-object v8, v9, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v12, :cond_7

    move-object v9, v8

    check-cast v9, Lv7/v;

    goto :goto_6

    :cond_7
    new-instance v10, Lv7/v;

    check-cast v11, Ljava/util/function/ToIntFunction;

    invoke-interface {v11, v8}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {v10, v11, v8, v7}, Lv7/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v9, Lv7/v;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_8
    new-instance v10, Lv7/v;

    check-cast v11, Ljava/util/function/ToIntFunction;

    invoke-interface {v11, v9}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {v10, v11, v9, v7}, Lv7/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v8

    :goto_7
    add-int/lit8 v6, v6, 0x1

    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iput-object v5, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    iput v6, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/j;->d(I)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    return-void

    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    return p0

    :goto_0
    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
