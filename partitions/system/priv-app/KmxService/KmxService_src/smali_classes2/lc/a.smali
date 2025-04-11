.class public abstract Llc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Llc/a;->a:[B

    return-void
.end method

.method public static final a(Lkc/e;J)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lkc/e;->t(J)B

    move-result v0

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v0, v5, :cond_0

    sget-object p1, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, p1}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lkc/e;->skip(J)V

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lkc/e;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final b(Lkc/e;Lkc/m;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$selectPrefix"

    invoke-static {v0, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lkc/e;->a:Lkc/p;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_12

    iget v4, v0, Lkc/p;->b:I

    iget v5, v0, Lkc/p;->c:I

    const/4 v6, 0x0

    iget-object v7, v0, Lkc/p;->a:[B

    move-object v9, v0

    move v10, v3

    move v8, v6

    :goto_0
    add-int/lit8 v11, v8, 0x1

    iget-object v12, v1, Lkc/m;->b:[I

    aget v8, v12, v8

    add-int/lit8 v13, v11, 0x1

    aget v11, v12, v11

    if-eq v11, v3, :cond_0

    move v10, v11

    :cond_0
    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v14, v8, v13

    :goto_1
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v15, v13, 0x1

    aget v13, v12, v13

    if-eq v4, v13, :cond_2

    return v10

    :cond_2
    if-ne v15, v14, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-ne v8, v5, :cond_9

    if-eqz v9, :cond_8

    iget-object v5, v9, Lkc/p;->f:Lkc/p;

    if-eqz v5, :cond_7

    iget v7, v5, Lkc/p;->b:I

    iget v8, v5, Lkc/p;->c:I

    iget-object v9, v5, Lkc/p;->a:[B

    if-ne v5, v0, :cond_6

    if-nez v4, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v2

    :cond_4
    return v10

    :cond_5
    move v5, v8

    move-object v8, v11

    goto :goto_4

    :cond_6
    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_4

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v11

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v11

    :cond_9
    move-object/from16 v16, v9

    move-object v9, v7

    move v7, v8

    move-object/from16 v8, v16

    :goto_4
    if-eqz v4, :cond_a

    aget v4, v12, v15

    move v2, v7

    move-object v7, v9

    move-object v9, v8

    goto :goto_6

    :cond_a
    move v4, v7

    move-object v7, v9

    move v13, v15

    move-object v9, v8

    goto :goto_1

    :cond_b
    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int v15, v13, v8

    :goto_5
    if-ne v13, v15, :cond_c

    return v10

    :cond_c
    aget v2, v12, v13

    if-ne v4, v2, :cond_11

    add-int/2addr v13, v8

    aget v4, v12, v13

    if-ne v14, v5, :cond_e

    iget-object v9, v9, Lkc/p;->f:Lkc/p;

    if-eqz v9, :cond_d

    iget v2, v9, Lkc/p;->b:I

    iget v5, v9, Lkc/p;->c:I

    iget-object v7, v9, Lkc/p;->a:[B

    if-ne v9, v0, :cond_f

    move-object v9, v11

    goto :goto_6

    :cond_d
    invoke-static {}, Li4/f;->M()V

    throw v11

    :cond_e
    move v2, v14

    :cond_f
    :goto_6
    if-ltz v4, :cond_10

    return v4

    :cond_10
    neg-int v8, v4

    move v4, v2

    const/4 v2, -0x2

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v13, v13, 0x1

    const/4 v2, -0x2

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    const/4 v2, -0x2

    goto :goto_7

    :cond_13
    move v2, v3

    :goto_7
    return v2
.end method
