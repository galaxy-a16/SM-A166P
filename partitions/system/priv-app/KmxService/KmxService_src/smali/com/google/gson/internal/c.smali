.class public final Lcom/google/gson/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/l;
.implements Ldagger/internal/b;
.implements Lj3/a;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/gson/internal/c;->a:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/gson/internal/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/google/gson/internal/c;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 3
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_1
    const/4 p1, 0x6

    .line 4
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_2
    const/4 p1, 0x5

    .line 5
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_3
    const/4 p1, 0x4

    .line 6
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_4
    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_5
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_6
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :goto_0
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;-><init>(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a([B[[BI)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_c

    add-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/4 v6, -0x1

    const/16 v7, 0xa

    if-le v5, v6, :cond_0

    aget-byte v8, v0, v5

    int-to-byte v9, v7

    if-eq v8, v9, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_2
    add-int v10, v5, v9

    aget-byte v11, v0, v10

    int-to-byte v12, v7

    if-eq v11, v12, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    sub-int v7, v10, v5

    move/from16 v11, p2

    move v9, v3

    move v12, v9

    move v13, v12

    :goto_3
    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    move v14, v3

    goto :goto_4

    :cond_2
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    sget-object v15, Lac/c;->a:[B

    and-int/lit16 v14, v14, 0xff

    move/from16 v17, v14

    move v14, v9

    move/from16 v9, v17

    :goto_4
    add-int v15, v5, v13

    aget-byte v15, v0, v15

    sget-object v16, Lac/c;->a:[B

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-eqz v9, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v7, :cond_4

    goto :goto_5

    :cond_4
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_b

    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_a

    :goto_5
    if-gez v9, :cond_5

    goto :goto_7

    :cond_5
    if-lez v9, :cond_6

    goto :goto_8

    :cond_6
    sub-int v6, v7, v13

    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    array-length v9, v1

    :goto_6
    if-ge v11, v9, :cond_7

    aget-object v12, v1, v11

    array-length v12, v12

    add-int/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    if-ge v8, v6, :cond_8

    :goto_7
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_8
    if-le v8, v6, :cond_9

    :goto_8
    add-int/lit8 v4, v10, 0x1

    goto :goto_0

    :cond_9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v5, v7, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_9

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move v12, v6

    move v9, v8

    goto :goto_3

    :cond_b
    move v9, v14

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_9
    return-object v2
.end method

.method public static b()Lkc/d;
    .locals 9

    sget-object v0, Lkc/d;->j:Lkc/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lkc/d;->f:Lkc/d;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-class v4, Lkc/d;

    if-nez v0, :cond_2

    sget-wide v5, Lkc/d;->h:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lkc/d;->j:Lkc/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkc/d;->f:Lkc/d;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lkc/d;->i:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    sget-object v1, Lkc/d;->j:Lkc/d;

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_2
    iget-wide v5, v0, Lkc/d;->g:J

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_3

    const-wide/32 v2, 0xf4240

    div-long v7, v5, v2

    mul-long/2addr v2, v7

    sub-long/2addr v5, v2

    long-to-int v0, v5

    invoke-virtual {v4, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    :cond_3
    sget-object v2, Lkc/d;->j:Lkc/d;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lkc/d;->f:Lkc/d;

    iput-object v3, v2, Lkc/d;->f:Lkc/d;

    iput-object v1, v0, Lkc/d;->f:Lkc/d;

    return-object v0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method


# virtual methods
.method public c()Lgc/g;
    .locals 0

    iget p0, p0, Lcom/google/gson/internal/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lgc/h;->a:Lgc/g;

    return-object p0

    :goto_0
    sget-object p0, Lgc/i;->a:Lgc/g;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/gson/internal/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/google/gson/internal/c;->a:I

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/gson/internal/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ll6/b;

    invoke-direct {p0}, Ll6/b;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/hivemq/client/internal/mqtt/handler/auth/i;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/i;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Le6/m;

    invoke-direct {p0}, Le6/m;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Le6/l;

    invoke-direct {p0}, Le6/l;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Le6/k;

    invoke-direct {p0}, Le6/k;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Le6/j;

    invoke-direct {p0}, Le6/j;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Le6/i;

    invoke-direct {p0}, Le6/i;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Le6/h;

    invoke-direct {p0}, Le6/h;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Le6/g;

    invoke-direct {p0}, Le6/g;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Le6/c;

    invoke-direct {p0}, Le6/c;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Lq6/a;

    invoke-direct {p0}, Lq6/a;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
