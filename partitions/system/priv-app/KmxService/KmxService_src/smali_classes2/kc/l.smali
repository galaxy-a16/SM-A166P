.class public final Lkc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Lkc/g;

.field public final d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lkc/o;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/l;->c:Lkc/g;

    iput-object p2, p0, Lkc/l;->d:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lkc/l;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkc/l;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/l;->b:Z

    iget-object p0, p0, Lkc/l;->c:Lkc/g;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public final read(Lkc/e;J)J
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lkc/l;->b:Z

    xor-int/2addr v4, v3

    if-eqz v4, :cond_c

    iget-object v4, p0, Lkc/l;->c:Lkc/g;

    iget-object v5, p0, Lkc/l;->d:Ljava/util/zip/Inflater;

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {p1, v3}, Lkc/e;->N(I)Lkc/p;

    move-result-object v2

    iget v3, v2, Lkc/p;->c:I

    rsub-int v3, v3, 0x2000

    int-to-long v6, v3

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lkc/g;->G()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Lkc/g;->c()Lkc/e;

    move-result-object v6

    iget-object v6, v6, Lkc/e;->a:Lkc/p;

    if-eqz v6, :cond_b

    iget v7, v6, Lkc/p;->c:I

    iget v8, v6, Lkc/p;->b:I

    sub-int/2addr v7, v8

    iput v7, p0, Lkc/l;->a:I

    iget-object v6, v6, Lkc/p;->a:[B

    invoke-virtual {v5, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_2
    iget-object v6, v2, Lkc/p;->a:[B

    iget v7, v2, Lkc/p;->c:I

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    iget v6, p0, Lkc/l;->a:I

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lkc/l;->a:I

    sub-int/2addr v7, v6

    iput v7, p0, Lkc/l;->a:I

    int-to-long v6, v6

    invoke-interface {v4, v6, v7}, Lkc/g;->skip(J)V

    :goto_3
    if-lez v3, :cond_5

    iget v6, v2, Lkc/p;->c:I

    add-int/2addr v6, v3

    iput v6, v2, Lkc/p;->c:I

    iget-wide v6, p1, Lkc/e;->b:J

    int-to-long v2, v3

    add-long/2addr v6, v2

    iput-wide v6, p1, Lkc/e;->b:J

    goto :goto_5

    :cond_5
    iget v3, v2, Lkc/p;->b:I

    iget v6, v2, Lkc/p;->c:I

    if-ne v3, v6, :cond_6

    invoke-virtual {v2}, Lkc/p;->a()Lkc/p;

    move-result-object v3

    iput-object v3, p1, Lkc/e;->a:Lkc/p;

    invoke-static {v2}, Lkc/q;->a(Lkc/p;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    move-wide v2, v0

    :goto_5
    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    return-wide v2

    :cond_7
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v4}, Lkc/g;->G()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "source exhausted prematurely"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_b
    :try_start_1
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/l;->c:Lkc/g;

    invoke-interface {p0}, Lkc/t;->timeout()Lkc/v;

    move-result-object p0

    return-object p0
.end method
