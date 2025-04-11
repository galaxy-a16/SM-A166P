.class public final Lkc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/g;


# instance fields
.field public final a:Lkc/e;

.field public b:Z

.field public final c:Lkc/t;


# direct methods
.method public constructor <init>(Lkc/t;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/o;->c:Lkc/t;

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lkc/o;->a:Lkc/e;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lkc/o;->U(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final E()[B
    .locals 1

    iget-object v0, p0, Lkc/o;->c:Lkc/t;

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0, v0}, Lkc/e;->F(Lkc/t;)J

    invoke-virtual {p0}, Lkc/e;->E()[B

    move-result-object p0

    return-object p0
.end method

.method public final G()Z
    .locals 6

    iget-boolean v0, p0, Lkc/o;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {v0}, Lkc/e;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0, v0, v2, v3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q(Lkc/e;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    const/16 v4, 0x2000

    int-to-long v4, v4

    iget-object v6, p0, Lkc/o;->c:Lkc/t;

    iget-object v7, p0, Lkc/o;->a:Lkc/e;

    invoke-interface {v6, v7, v4, v5}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lkc/e;->d()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lkc/e;->f0(Lkc/e;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lkc/e;->b:J

    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lkc/e;->f0(Lkc/e;J)V

    :cond_2
    return-wide v2
.end method

.method public final U(J)Ljava/lang/String;
    .locals 22

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_1

    move-wide v13, v9

    goto :goto_1

    :cond_1
    add-long v0, v7, v11

    move-wide v13, v0

    :goto_1
    const/16 v0, 0xa

    int-to-byte v15, v0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-wide v3, v13

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lkc/o;->a(JJB)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object v3, v6, Lkc/o;->a:Lkc/e;

    if-eqz v2, :cond_2

    invoke-static {v3, v0, v1}, Llc/a;->a(Lkc/e;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    cmp-long v0, v13, v9

    if-gez v0, :cond_3

    invoke-virtual {v6, v13, v14}, Lkc/o;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-long v0, v13, v11

    invoke-virtual {v3, v0, v1}, Lkc/e;->t(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    add-long/2addr v11, v13

    invoke-virtual {v6, v11, v12}, Lkc/o;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v13, v14}, Lkc/e;->t(J)B

    move-result v0

    if-ne v0, v15, :cond_3

    invoke-static {v3, v13, v14}, Llc/a;->a(Lkc/e;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    const-wide/16 v18, 0x0

    iget-wide v1, v3, Lkc/e;->b:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v21}, Lkc/e;->i(Lkc/e;JJ)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: limit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v3, Lkc/e;->b:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkc/e;->m()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "limit < 0: "

    invoke-static {v0, v7, v8}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(JJB)J
    .locals 10

    iget-boolean p1, p0, Lkc/o;->b:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    :goto_1
    cmp-long p1, v0, p3

    const-wide/16 v8, -0x1

    if-gez p1, :cond_3

    iget-object v2, p0, Lkc/o;->a:Lkc/e;

    move-wide v3, v0

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lkc/e;->x(JJB)J

    move-result-wide p1

    cmp-long v2, p1, v8

    if-eqz v2, :cond_1

    move-wide v8, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lkc/o;->a:Lkc/e;

    iget-wide v2, p1, Lkc/e;->b:J

    cmp-long p2, v2, p3

    if-gez p2, :cond_3

    const/16 p2, 0x2000

    int-to-long v4, p2

    iget-object p2, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p2, p1, v4, v5}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide p1

    cmp-long p1, p1, v8

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    :goto_2
    return-wide v8

    :cond_4
    const-string p0, "fromIndex=0 toIndex="

    invoke-static {p0, p3, p4}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lkc/o;->j0(J)V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0}, Lkc/e;->readInt()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final c()Lkc/e;
    .locals 0

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lkc/o;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/o;->b:Z

    iget-object v0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0}, Lkc/e;->a()V

    :goto_0
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lkc/o;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkc/o;->request(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final m()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lkc/o;->c:Lkc/t;

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0, v0}, Lkc/e;->F(Lkc/t;)J

    invoke-virtual {p0}, Lkc/e;->m()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final n(J)Lokio/ByteString;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkc/o;->j0(J)V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0, p1, p2}, Lkc/e;->n(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lkc/m;)I
    .locals 7

    const-string v0, "options"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/o;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    invoke-static {v0, p1, v1}, Llc/a;->b(Lkc/e;Lkc/m;Z)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_2

    iget-object p0, p1, Lkc/m;->a:[Lokio/ByteString;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lkc/e;->skip(J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v5, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {v5, v0, v2, v3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_0

    :cond_2
    move v2, v4

    :goto_0
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    iget-wide v1, v0, Lkc/e;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 2
    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0, v0, v1, v2}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lkc/e;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final read(Lkc/e;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lkc/o;->b:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lkc/o;->a:Lkc/e;

    iget-wide v3, v2, Lkc/e;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    .line 4
    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0, v2, v0, v1}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v0, v2, Lkc/e;->b:J

    .line 6
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Lkc/e;->read(Lkc/e;J)J

    move-result-wide v3

    :goto_1
    return-wide v3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "byteCount < 0: "

    .line 7
    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lkc/o;->j0(J)V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result p0

    return p0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lkc/o;->j0(J)V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0}, Lkc/e;->readInt()I

    move-result p0

    return p0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lkc/o;->j0(J)V

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    invoke-virtual {p0}, Lkc/e;->readShort()S

    move-result p0

    return p0
.end method

.method public final request(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lkc/o;->b:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    iget-wide v3, v0, Lkc/e;->b:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    const/16 v3, 0x2000

    int-to-long v3, v3

    iget-object v5, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {v5, v0, v3, v4}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p1, p2}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s0()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lkc/o;->j0(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lkc/o;->request(J)Z

    move-result v2

    iget-object v3, p0, Lkc/o;->a:Lkc/e;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lkc/e;->t(J)B

    move-result v2

    const/16 v4, 0x30

    int-to-byte v4, v4

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p0, 0x10

    invoke-static {p0}, Li4/f;->l(I)V

    invoke-static {p0}, Li4/f;->l(I)V

    invoke-static {v2, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lkc/e;->s0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final skip(J)V
    .locals 5

    iget-boolean v0, p0, Lkc/o;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lkc/o;->a:Lkc/e;

    iget-wide v3, v2, Lkc/e;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/16 v0, 0x2000

    int-to-long v0, v0

    iget-object v3, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {v3, v2, v0, v1}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-wide v0, v2, Lkc/e;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lkc/e;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-virtual {v0, p0}, Lkc/e;->F(Lkc/t;)J

    iget-wide v1, v0, Lkc/e;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0}, Lkc/t;->timeout()Lkc/v;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Lcom/fasterxml/jackson/databind/util/e;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/e;-><init>(Lkc/g;I)V

    return-object v0
.end method
