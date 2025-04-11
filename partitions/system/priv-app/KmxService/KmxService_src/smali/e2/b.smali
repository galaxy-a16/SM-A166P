.class public final Le2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le2/b;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public f:[I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le2/b;->a:Le2/b;

    const/4 v0, 0x0

    iput v0, p0, Le2/b;->k:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Le2/b;->o:Z

    iput p1, p0, Le2/b;->c:I

    iput-boolean v0, p0, Le2/b;->d:Z

    iput-boolean v1, p0, Le2/b;->e:Z

    const/16 v3, 0x40

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v8, 0x200

    const/4 v4, 0x4

    .line 1
    new-instance v0, Le2/a;

    new-array v5, v8, [I

    const/16 v1, 0x80

    new-array v6, v1, [Ljava/lang/String;

    const/16 v7, 0x1c0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le2/a;-><init>(II[I[Ljava/lang/String;II)V

    .line 2
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le2/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Le2/b;ILe2/a;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/b;->a:Le2/b;

    iput p2, p0, Le2/b;->c:I

    iput-boolean p4, p0, Le2/b;->d:Z

    iput-boolean p5, p0, Le2/b;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Le2/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget p1, p3, Le2/a;->b:I

    iput p1, p0, Le2/b;->k:I

    iget p1, p3, Le2/a;->a:I

    iput p1, p0, Le2/b;->g:I

    shl-int/lit8 p1, p1, 0x2

    iput p1, p0, Le2/b;->h:I

    shr-int/lit8 p2, p1, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Le2/b;->i:I

    iget p1, p3, Le2/a;->c:I

    iput p1, p0, Le2/b;->j:I

    iget-object p1, p3, Le2/a;->d:[I

    iput-object p1, p0, Le2/b;->f:[I

    iget-object p1, p3, Le2/a;->e:[Ljava/lang/String;

    iput-object p1, p0, Le2/b;->l:[Ljava/lang/String;

    iget p1, p3, Le2/a;->f:I

    iput p1, p0, Le2/b;->m:I

    iget p1, p3, Le2/a;->g:I

    iput p1, p0, Le2/b;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/b;->o:Z

    return-void
.end method

.method public static g()Le2/b;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    or-int/lit8 v0, v2, 0x1

    new-instance v1, Le2/b;

    invoke-direct {v1, v0}, Le2/b;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget p0, p0, Le2/b;->g:I

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final b(I)I
    .locals 10

    invoke-virtual {p0, p1}, Le2/b;->a(I)I

    move-result v0

    iget-object v1, p0, Le2/b;->f:[I

    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget v2, p0, Le2/b;->k:I

    iget v3, p0, Le2/b;->g:I

    shr-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-le v2, v4, :cond_2

    iget v4, p0, Le2/b;->m:I

    shl-int/lit8 v6, v3, 0x3

    sub-int/2addr v6, v3

    sub-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v6, v6, 0x7

    if-gt v4, v6, :cond_1

    int-to-double v6, v2

    int-to-double v2, v3

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v8

    cmpl-double v2, v6, v2

    if-lez v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Le2/b;->c(I)I

    move-result p0

    return p0

    :cond_3
    iget v2, p0, Le2/b;->h:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v2, p0, Le2/b;->i:I

    iget v3, p0, Le2/b;->j:I

    add-int/lit8 v4, v3, 0x2

    shr-int/2addr v0, v4

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    shl-int v0, v5, v3

    add-int/2addr v0, v2

    :goto_1
    if-ge v2, v0, :cond_6

    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_6
    iget v0, p0, Le2/b;->m:I

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Le2/b;->m:I

    iget v2, p0, Le2/b;->g:I

    shl-int/lit8 v3, v2, 0x3

    if-lt v1, v3, :cond_9

    iget-boolean v0, p0, Le2/b;->e:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x400

    if-gt v2, v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spill-over slots in symbol table with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le2/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries, hash area of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le2/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots is now full (all "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le2/b;->g:I

    shr-int/lit8 p0, p0, 0x3

    const-string v1, " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Le2/b;->c(I)I

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method public final c(I)I
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/b;->o:Z

    iget-object v1, p0, Le2/b;->f:[I

    iget-object v2, p0, Le2/b;->l:[Ljava/lang/String;

    iget v3, p0, Le2/b;->g:I

    iget v4, p0, Le2/b;->k:I

    add-int v5, v3, v3

    iget v6, p0, Le2/b;->m:I

    const/high16 v7, 0x10000

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-le v5, v7, :cond_0

    iput v0, p0, Le2/b;->k:I

    shl-int/lit8 v2, v3, 0x3

    sub-int v3, v2, v3

    iput v3, p0, Le2/b;->m:I

    iput v2, p0, Le2/b;->n:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Le2/b;->l:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    array-length v7, v1

    const/4 v10, 0x3

    shl-int/2addr v3, v10

    add-int/2addr v7, v3

    new-array v3, v7, [I

    iput-object v3, p0, Le2/b;->f:[I

    iput v5, p0, Le2/b;->g:I

    shl-int/lit8 v3, v5, 0x2

    iput v3, p0, Le2/b;->h:I

    shr-int/lit8 v7, v3, 0x1

    add-int/2addr v3, v7

    iput v3, p0, Le2/b;->i:I

    shr-int/lit8 v3, v5, 0x2

    const/16 v7, 0x40

    if-ge v3, v7, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v7, 0x100

    if-gt v3, v7, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :cond_2
    const/16 v7, 0x400

    if-gt v3, v7, :cond_3

    const/4 v3, 0x6

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    :goto_0
    iput v3, p0, Le2/b;->j:I

    array-length v3, v2

    shl-int/2addr v3, v9

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Le2/b;->l:[Ljava/lang/String;

    iput v0, p0, Le2/b;->k:I

    shl-int/lit8 v3, v5, 0x3

    sub-int v5, v3, v5

    iput v5, p0, Le2/b;->m:I

    iput v3, p0, Le2/b;->n:I

    const/16 v3, 0x10

    new-array v3, v3, [I

    move v5, v0

    move v7, v5

    :goto_1
    if-ge v5, v6, :cond_9

    add-int/lit8 v11, v5, 0x3

    aget v11, v1, v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v12, v5, 0x2

    aget-object v12, v2, v12

    if-eq v11, v9, :cond_8

    if-eq v11, v8, :cond_7

    if-eq v11, v10, :cond_6

    array-length v13, v3

    if-le v11, v13, :cond_5

    new-array v3, v11, [I

    :cond_5
    add-int/lit8 v13, v5, 0x1

    aget v13, v1, v13

    invoke-static {v1, v13, v3, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v12, v3, v11}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_2

    :cond_6
    aget v11, v1, v5

    aput v11, v3, v0

    add-int/lit8 v11, v5, 0x1

    aget v11, v1, v11

    aput v11, v3, v9

    add-int/lit8 v11, v5, 0x2

    aget v11, v1, v11

    aput v11, v3, v8

    invoke-virtual {p0, v12, v3, v10}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_2

    :cond_7
    aget v11, v1, v5

    aput v11, v3, v0

    add-int/lit8 v11, v5, 0x1

    aget v11, v1, v11

    aput v11, v3, v9

    invoke-virtual {p0, v12, v3, v8}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_2

    :cond_8
    aget v11, v1, v5

    aput v11, v3, v0

    invoke-virtual {p0, v12, v3, v9}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_9
    if-ne v7, v4, :cond_e

    :goto_3
    invoke-virtual {p0, p1}, Le2/b;->a(I)I

    move-result p1

    iget-object v0, p0, Le2/b;->f:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_a

    return p1

    :cond_a
    iget v1, p0, Le2/b;->h:I

    shr-int/lit8 v2, p1, 0x3

    shl-int/2addr v2, v8

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget v1, p0, Le2/b;->i:I

    iget v2, p0, Le2/b;->j:I

    add-int/lit8 v3, v2, 0x2

    shr-int/2addr p1, v3

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    shl-int p1, v9, v2

    add-int/2addr p1, v1

    :goto_4
    if-ge v1, p1, :cond_d

    add-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    :cond_d
    iget p1, p0, Le2/b;->m:I

    add-int/lit8 v0, p1, 0x4

    iput v0, p0, Le2/b;->m:I

    return p1

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed rehash(): old count="

    const-string v0, ", copyCount="

    invoke-static {p1, v4, v0, v7}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(II[I)Z
    .locals 6

    iget-object v0, p0, Le2/b;->f:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    aget p0, p3, v2

    add-int/lit8 p1, p2, 0x1

    aget p2, v0, p2

    if-eq p0, p2, :cond_0

    return v2

    :cond_0
    move p2, p1

    move p0, v1

    goto :goto_0

    :pswitch_1
    move p0, v2

    :goto_0
    add-int/lit8 p1, p0, 0x1

    aget p0, p3, p0

    add-int/lit8 v3, p2, 0x1

    aget p2, v0, p2

    if-eq p0, p2, :cond_1

    return v2

    :cond_1
    move p2, v3

    goto :goto_1

    :pswitch_2
    move p1, v2

    :goto_1
    add-int/lit8 p0, p1, 0x1

    aget p1, p3, p1

    add-int/lit8 v3, p2, 0x1

    aget p2, v0, p2

    if-eq p1, p2, :cond_2

    return v2

    :cond_2
    move p2, v3

    goto :goto_2

    :pswitch_3
    move p0, v2

    :goto_2
    add-int/lit8 p1, p0, 0x1

    aget p0, p3, p0

    add-int/lit8 v3, p2, 0x1

    aget p2, v0, p2

    if-eq p0, p2, :cond_3

    return v2

    :cond_3
    move p2, v3

    goto :goto_3

    :pswitch_4
    move p1, v2

    :goto_3
    add-int/lit8 p0, p1, 0x1

    aget p1, p3, p1

    add-int/lit8 v3, p2, 0x1

    aget p2, v0, p2

    if-eq p1, p2, :cond_4

    return v2

    :cond_4
    add-int/lit8 p1, p0, 0x1

    aget p0, p3, p0

    add-int/lit8 p2, v3, 0x1

    aget v3, v0, v3

    if-eq p0, v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 p0, p1, 0x1

    aget p1, p3, p1

    add-int/lit8 v3, p2, 0x1

    aget p2, v0, p2

    if-eq p1, p2, :cond_6

    return v2

    :cond_6
    aget p0, p3, p0

    aget p1, v0, v3

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v1

    :goto_4
    move v0, v2

    :goto_5
    add-int/lit8 v3, v0, 0x1

    aget v0, p3, v0

    iget-object v4, p0, Le2/b;->f:[I

    add-int/lit8 v5, p2, 0x1

    aget p2, v4, p2

    if-eq v0, p2, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    if-lt v3, p1, :cond_9

    :goto_6
    return v1

    :cond_9
    move v0, v3

    move p2, v5

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Le2/b;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le2/b;->a:Le2/b;

    if-nez v0, :cond_1

    iget p0, p0, Le2/b;->k:I

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add names to Root symbol table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add names to Placeholder symbol table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Le2/b;->f:[I

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Le2/b;->f:[I

    iget-object v0, p0, Le2/b;->l:[Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Le2/b;->l:[Ljava/lang/String;

    iput-boolean v1, p0, Le2/b;->o:Z

    :cond_2
    iget-boolean v0, p0, Le2/b;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget v0, p0, Le2/b;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_6

    const/4 v4, 0x3

    if-eq p3, v4, :cond_5

    invoke-virtual {p0, p2, p3}, Le2/b;->f([II)I

    move-result v0

    invoke-virtual {p0, v0}, Le2/b;->b(I)I

    move-result v4

    iget-object v5, p0, Le2/b;->f:[I

    aput v0, v5, v4

    iget v0, p0, Le2/b;->n:I

    add-int v6, v0, p3

    array-length v7, v5

    if-le v6, v7, :cond_4

    array-length v5, v5

    sub-int/2addr v6, v5

    const/16 v5, 0x1000

    iget v7, p0, Le2/b;->g:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v7, p0, Le2/b;->f:[I

    array-length v7, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v7

    iget-object v6, p0, Le2/b;->f:[I

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Le2/b;->f:[I

    :cond_4
    iget-object v5, p0, Le2/b;->f:[I

    invoke-static {p2, v1, v5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Le2/b;->n:I

    add-int/2addr p2, p3

    iput p2, p0, Le2/b;->n:I

    iget-object p2, p0, Le2/b;->f:[I

    add-int/lit8 v1, v4, 0x1

    aput v0, p2, v1

    add-int/lit8 v0, v4, 0x3

    aput p3, p2, v0

    goto/16 :goto_0

    :cond_5
    aget p3, p2, v1

    aget v5, p2, v3

    aget v6, p2, v2

    xor-int/2addr p3, v0

    ushr-int/lit8 v0, p3, 0x9

    add-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x1f

    add-int/2addr p3, v5

    mul-int/lit8 p3, p3, 0x21

    ushr-int/lit8 v0, p3, 0xf

    add-int/2addr p3, v0

    xor-int/2addr p3, v6

    ushr-int/lit8 v0, p3, 0x4

    add-int/2addr p3, v0

    ushr-int/lit8 v0, p3, 0xf

    add-int/2addr p3, v0

    shl-int/lit8 v0, p3, 0x9

    xor-int/2addr p3, v0

    invoke-virtual {p0, p3}, Le2/b;->b(I)I

    move-result p3

    iget-object v0, p0, Le2/b;->f:[I

    aget v1, p2, v1

    aput v1, v0, p3

    add-int/lit8 v1, p3, 0x1

    aget v5, p2, v3

    aput v5, v0, v1

    add-int/lit8 v1, p3, 0x2

    aget p2, p2, v2

    aput p2, v0, v1

    add-int/lit8 p2, p3, 0x3

    aput v4, v0, p2

    move v4, p3

    goto :goto_0

    :cond_6
    aget p3, p2, v1

    aget v4, p2, v3

    ushr-int/lit8 v5, p3, 0xf

    add-int/2addr p3, v5

    ushr-int/lit8 v5, p3, 0x9

    xor-int/2addr p3, v5

    mul-int/lit8 v4, v4, 0x21

    add-int/2addr v4, p3

    xor-int p3, v0, v4

    ushr-int/lit8 v0, p3, 0x10

    add-int/2addr p3, v0

    ushr-int/lit8 v0, p3, 0x4

    xor-int/2addr p3, v0

    shl-int/lit8 v0, p3, 0x3

    add-int/2addr p3, v0

    invoke-virtual {p0, p3}, Le2/b;->b(I)I

    move-result v4

    iget-object p3, p0, Le2/b;->f:[I

    aget v0, p2, v1

    aput v0, p3, v4

    add-int/lit8 v0, v4, 0x1

    aget p2, p2, v3

    aput p2, p3, v0

    add-int/lit8 p2, v4, 0x3

    aput v2, p3, p2

    goto :goto_0

    :cond_7
    aget p3, p2, v1

    xor-int/2addr p3, v0

    ushr-int/lit8 v0, p3, 0x10

    add-int/2addr p3, v0

    shl-int/lit8 v0, p3, 0x3

    xor-int/2addr p3, v0

    ushr-int/lit8 v0, p3, 0xc

    add-int/2addr p3, v0

    invoke-virtual {p0, p3}, Le2/b;->b(I)I

    move-result v4

    iget-object p3, p0, Le2/b;->f:[I

    aget p2, p2, v1

    aput p2, p3, v4

    add-int/lit8 p2, v4, 0x3

    aput v3, p3, p2

    :goto_0
    iget-object p2, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p3, v4, 0x2

    aput-object p1, p2, p3

    iget p2, p0, Le2/b;->k:I

    add-int/2addr p2, v3

    iput p2, p0, Le2/b;->k:I

    return-object p1
.end method

.method public final f([II)I
    .locals 3

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    const/4 v0, 0x0

    aget v0, p1, v0

    iget p0, p0, Le2/b;->c:I

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x9

    add-int/2addr p0, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xf

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x21

    const/4 v0, 0x2

    aget v0, p1, v0

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    add-int/2addr p0, v0

    const/4 v0, 0x3

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p1, v0

    shr-int/lit8 v2, v1, 0x15

    xor-int/2addr v1, v2

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x1003f

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x13

    add-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x5

    xor-int/2addr p0, p1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final h(I)Ljava/lang/String;
    .locals 7

    iget v0, p0, Le2/b;->c:I

    xor-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Le2/b;->a(I)I

    move-result v0

    iget-object v1, p0, Le2/b;->f:[I

    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v0, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget v2, p0, Le2/b;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    aget v5, v1, v2

    if-ne v5, p1, :cond_3

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    :cond_3
    iget v2, p0, Le2/b;->i:I

    iget v5, p0, Le2/b;->j:I

    add-int/lit8 v6, v5, 0x2

    shr-int/2addr v0, v6

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    shl-int v0, v4, v5

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_6

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    aget v6, v1, v2

    if-ne p1, v6, :cond_4

    if-ne v4, v5, :cond_4

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v3, p0, p1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_6
    iget v0, p0, Le2/b;->g:I

    shl-int/lit8 v2, v0, 0x3

    sub-int/2addr v2, v0

    :goto_1
    iget v0, p0, Le2/b;->m:I

    if-ge v2, v0, :cond_8

    aget v0, v1, v2

    if-ne p1, v0, :cond_7

    add-int/lit8 v0, v2, 0x3

    aget v0, v1, v0

    if-ne v4, v0, :cond_7

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v3, p0, p1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v3
.end method

.method public final i(II)Ljava/lang/String;
    .locals 7

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v1, v0

    iget v0, p0, Le2/b;->c:I

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Le2/b;->a(I)I

    move-result v0

    iget-object v1, p0, Le2/b;->f:[I

    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne p2, v2, :cond_1

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v0, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    iget v2, p0, Le2/b;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    if-ne v5, v3, :cond_2

    aget v5, v1, v2

    if-ne p1, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    if-ne p2, v5, :cond_3

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    if-nez v5, :cond_3

    return-object v4

    :cond_3
    iget v2, p0, Le2/b;->i:I

    iget v5, p0, Le2/b;->j:I

    add-int/lit8 v6, v5, 0x2

    shr-int/2addr v0, v6

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    const/4 v0, 0x1

    shl-int/2addr v0, v5

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_6

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    aget v6, v1, v2

    if-ne p1, v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    if-ne p2, v6, :cond_4

    if-ne v3, v5, :cond_4

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v4, p0, p1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_6
    iget v0, p0, Le2/b;->g:I

    shl-int/lit8 v2, v0, 0x3

    sub-int/2addr v2, v0

    :goto_1
    iget v0, p0, Le2/b;->m:I

    if-ge v2, v0, :cond_8

    aget v0, v1, v2

    if-ne p1, v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    aget v0, v1, v0

    if-ne p2, v0, :cond_7

    add-int/lit8 v0, v2, 0x3

    aget v0, v1, v0

    if-ne v3, v0, :cond_7

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v4, p0, p1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v4
.end method

.method public final j(III)Ljava/lang/String;
    .locals 7

    iget v0, p0, Le2/b;->c:I

    xor-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x21

    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    xor-int/2addr v0, p3

    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Le2/b;->a(I)I

    move-result v0

    iget-object v1, p0, Le2/b;->f:[I

    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    if-ne v2, p3, :cond_1

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v0, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    iget v2, p0, Le2/b;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    if-ne v5, v3, :cond_2

    aget v5, v1, v2

    if-ne p1, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    if-ne v5, p2, :cond_3

    add-int/lit8 v5, v2, 0x2

    aget v5, v1, v5

    if-ne v5, p3, :cond_3

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    if-nez v5, :cond_3

    return-object v4

    :cond_3
    iget v2, p0, Le2/b;->i:I

    iget v5, p0, Le2/b;->j:I

    add-int/lit8 v6, v5, 0x2

    shr-int/2addr v0, v6

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    const/4 v0, 0x1

    shl-int/2addr v0, v5

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_6

    add-int/lit8 v5, v2, 0x3

    aget v5, v1, v5

    aget v6, v1, v2

    if-ne p1, v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    if-ne p2, v6, :cond_4

    add-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    if-ne p3, v6, :cond_4

    if-ne v3, v5, :cond_4

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v4, p0, p1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_6
    iget v0, p0, Le2/b;->g:I

    shl-int/lit8 v2, v0, 0x3

    sub-int/2addr v2, v0

    :goto_1
    iget v0, p0, Le2/b;->m:I

    if-ge v2, v0, :cond_8

    aget v0, v1, v2

    if-ne p1, v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    aget v0, v1, v0

    if-ne p2, v0, :cond_7

    add-int/lit8 v0, v2, 0x2

    aget v0, v1, v0

    if-ne p3, v0, :cond_7

    add-int/lit8 v0, v2, 0x3

    aget v0, v1, v0

    if-ne v3, v0, :cond_7

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v2, 0x2

    aget-object v4, p0, p1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v4
.end method

.method public final k([II)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    aget p2, p1, v0

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, p2, v0, p1}, Le2/b;->j(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    aget p2, p1, v0

    aget p1, p1, v2

    invoke-virtual {p0, p2, p1}, Le2/b;->i(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Le2/b;->h(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, p2}, Le2/b;->f([II)I

    move-result v0

    invoke-virtual {p0, v0}, Le2/b;->a(I)I

    move-result v3

    iget-object v4, p0, Le2/b;->f:[I

    add-int/lit8 v5, v3, 0x3

    aget v5, v4, v5

    aget v6, v4, v3

    if-ne v0, v6, :cond_4

    if-ne v5, p2, :cond_4

    add-int/lit8 v6, v3, 0x1

    aget v6, v4, v6

    invoke-virtual {p0, p2, v6, p1}, Le2/b;->d(II[I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v3, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_4
    const/4 v6, 0x0

    if-nez v5, :cond_5

    return-object v6

    :cond_5
    iget v5, p0, Le2/b;->h:I

    shr-int/lit8 v7, v3, 0x3

    shl-int/2addr v7, v1

    add-int/2addr v5, v7

    add-int/lit8 v7, v5, 0x3

    aget v7, v4, v7

    aget v8, v4, v5

    if-ne v0, v8, :cond_6

    if-ne v7, p2, :cond_6

    add-int/lit8 v7, v5, 0x1

    aget v4, v4, v7

    invoke-virtual {p0, p2, v4, p1}, Le2/b;->d(II[I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v5, 0x2

    aget-object p0, p0, p1

    return-object p0

    :cond_6
    iget v4, p0, Le2/b;->i:I

    iget v5, p0, Le2/b;->j:I

    add-int/lit8 v7, v5, 0x2

    shr-int/2addr v3, v7

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    iget-object v3, p0, Le2/b;->f:[I

    shl-int/2addr v2, v5

    add-int/2addr v2, v4

    :goto_0
    if-ge v4, v2, :cond_9

    add-int/lit8 v5, v4, 0x3

    aget v5, v3, v5

    aget v7, v3, v4

    if-ne v0, v7, :cond_7

    if-ne p2, v5, :cond_7

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    invoke-virtual {p0, p2, v7, p1}, Le2/b;->d(II[I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v4, 0x2

    aget-object v6, p0, p1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_9
    iget v2, p0, Le2/b;->g:I

    shl-int/lit8 v4, v2, 0x3

    sub-int/2addr v4, v2

    :goto_1
    iget v2, p0, Le2/b;->m:I

    if-ge v4, v2, :cond_b

    aget v2, v3, v4

    if-ne v0, v2, :cond_a

    add-int/lit8 v2, v4, 0x3

    aget v2, v3, v2

    if-ne p2, v2, :cond_a

    add-int/lit8 v2, v4, 0x1

    aget v2, v3, v2

    invoke-virtual {p0, p2, v2, p1}, Le2/b;->d(II[I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p0, p0, Le2/b;->l:[Ljava/lang/String;

    shr-int/lit8 p1, v4, 0x2

    aget-object v6, p0, p1

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_b
    :goto_2
    return-object v6
.end method

.method public final l(I)Le2/b;
    .locals 7

    new-instance v6, Le2/b;

    iget v2, p0, Le2/b;->c:I

    iget-object v0, p0, Le2/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le2/a;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Le2/b;-><init>(Le2/b;ILe2/a;ZZ)V

    return-object v6
.end method

.method public final m()V
    .locals 13

    iget-object v0, p0, Le2/b;->a:Le2/b;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Le2/b;->o:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    new-instance v1, Le2/a;

    invoke-direct {v1, p0}, Le2/a;-><init>(Le2/b;)V

    iget-object v0, v0, Le2/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le2/a;

    iget v4, v3, Le2/a;->b:I

    iget v5, v1, Le2/a;->b:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x1770

    if-le v5, v4, :cond_1

    const/16 v12, 0x200

    const/4 v8, 0x4

    new-instance v1, Le2/a;

    new-array v9, v12, [I

    const/16 v4, 0x80

    new-array v10, v4, [Ljava/lang/String;

    const/16 v11, 0x1c0

    const/16 v7, 0x40

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Le2/a;-><init>(II[I[Ljava/lang/String;II)V

    :cond_1
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    iput-boolean v2, p0, Le2/b;->o:Z

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Le2/b;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v5, p0, Le2/b;->f:[I

    aget v5, v5, v3

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    iget v0, p0, Le2/b;->h:I

    add-int/2addr v0, v2

    iget v3, p0, Le2/b;->i:I

    move v5, v1

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v6, p0, Le2/b;->f:[I

    aget v6, v6, v0

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    iget v0, p0, Le2/b;->i:I

    add-int/2addr v0, v2

    iget v3, p0, Le2/b;->g:I

    add-int/2addr v3, v0

    move v6, v1

    :goto_2
    if-ge v0, v3, :cond_5

    iget-object v7, p0, Le2/b;->f:[I

    aget v7, v7, v0

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_5
    iget v0, p0, Le2/b;->m:I

    iget v3, p0, Le2/b;->g:I

    shl-int/lit8 v7, v3, 0x3

    sub-int/2addr v7, v3

    sub-int/2addr v0, v7

    const/4 v7, 0x2

    shr-int/2addr v0, v7

    shl-int/2addr v3, v2

    move v9, v1

    move v8, v2

    :goto_3
    if-ge v8, v3, :cond_7

    iget-object v10, p0, Le2/b;->f:[I

    aget v10, v10, v8

    if-eqz v10, :cond_6

    add-int/lit8 v9, v9, 0x1

    :cond_6
    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_7
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const-class v8, Le2/b;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    iget v1, p0, Le2/b;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v3, v8

    iget p0, p0, Le2/b;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v3, v1

    const/4 p0, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p0

    const/4 p0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p0

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x7

    aput-object p0, v3, v0

    const/16 p0, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p0

    const-string p0, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
