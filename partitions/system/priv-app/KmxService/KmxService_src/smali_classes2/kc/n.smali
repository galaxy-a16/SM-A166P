.class public final Lkc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/f;


# instance fields
.field public final a:Lkc/e;

.field public b:Z

.field public final c:Lkc/r;


# direct methods
.method public constructor <init>(Lkc/r;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/n;->c:Lkc/r;

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lkc/n;->a:Lkc/e;

    return-void
.end method


# virtual methods
.method public final F(Lkc/t;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v4, p0, Lkc/n;->a:Lkc/e;

    move-object v5, p1

    check-cast v5, Lkc/c;

    invoke-virtual {v5, v4, v2, v3}, Lkc/c;->read(Lkc/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    goto :goto_0
.end method

.method public final P(Lokio/ByteString;)Lkc/f;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->b0(Lokio/ByteString;)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lkc/f;
    .locals 5

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0}, Lkc/e;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lkc/n;->c:Lkc/r;

    invoke-interface {v3, v0, v1, v2}, Lkc/r;->f0(Lkc/e;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Lkc/e;
    .locals 0

    iget-object p0, p0, Lkc/n;->a:Lkc/e;

    return-object p0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lkc/n;->c:Lkc/r;

    iget-boolean v1, p0, Lkc/n;->b:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lkc/n;->a:Lkc/e;

    iget-wide v2, v1, Lkc/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-interface {v0, v1, v2, v3}, Lkc/r;->f0(Lkc/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Lkc/r;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/n;->b:Z

    if-nez v1, :cond_3

    :goto_2
    return-void

    :cond_3
    throw v1
.end method

.method public final e0(II[B)Lkc/f;
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1, p2, p3}, Lkc/e;->O(II[B)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f0(Lkc/e;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1, p2, p3}, Lkc/e;->f0(Lkc/e;J)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    iget-wide v1, v0, Lkc/e;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object p0, p0, Lkc/n;->c:Lkc/r;

    if-lez v3, :cond_0

    invoke-interface {p0, v0, v1, v2}, Lkc/r;->f0(Lkc/e;J)V

    :cond_0
    invoke-interface {p0}, Lkc/r;->flush()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lkc/n;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j(J)Lkc/f;
    .locals 1

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1, p2}, Lkc/e;->x0(J)Lkc/e;

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k0(Ljava/lang/String;)Lkc/f;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->C0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n0(J)Lkc/f;
    .locals 1

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1, p2}, Lkc/e;->w0(J)Lkc/e;

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/n;->c:Lkc/r;

    invoke-interface {p0}, Lkc/r;->timeout()Lkc/v;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/n;->c:Lkc/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write([B)Lkc/f;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    array-length v2, p1

    invoke-virtual {v0, v1, v2, p1}, Lkc/e;->O(II[B)V

    .line 3
    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeByte(I)Lkc/f;
    .locals 1

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->h0(I)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeInt(I)Lkc/f;
    .locals 1

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->y0(I)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeShort(I)Lkc/f;
    .locals 1

    iget-boolean v0, p0, Lkc/n;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0, p1}, Lkc/e;->z0(I)V

    invoke-virtual {p0}, Lkc/n;->a()Lkc/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
