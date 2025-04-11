.class public final Lkc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lkc/s;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkc/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkc/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkc/s;Lkc/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkc/b;->a:I

    .line 2
    iput-object p1, p0, Lkc/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkc/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget v0, p0, Lkc/b;->a:I

    iget-object v1, p0, Lkc/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lkc/d;

    invoke-virtual {v1}, Lkc/d;->h()V

    :try_start_0
    iget-object p0, p0, Lkc/b;->c:Ljava/lang/Object;

    check-cast p0, Lkc/r;

    invoke-interface {p0}, Lkc/r;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lkc/d;->i()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lkc/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lkc/d;->i()Z

    throw p0

    :goto_2
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f0(Lkc/e;J)V
    .locals 12

    iget v0, p0, Lkc/b;->a:I

    iget-object v1, p0, Lkc/b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lkc/b;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const-string v4, "source"

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {p1, v4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v6, p1, Lkc/e;->b:J

    const-wide/16 v8, 0x0

    move-wide v10, p2

    invoke-static/range {v6 .. v11}, Lv4/b;->B(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    iget-object v0, p1, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_5

    move-wide v6, v2

    :goto_1
    const/high16 v4, 0x10000

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    iget v4, v0, Lkc/p;->c:I

    iget v8, v0, Lkc/p;->b:I

    sub-int/2addr v4, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    cmp-long v4, v6, p2

    if-ltz v4, :cond_0

    move-wide v6, p2

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_2
    :goto_2
    move-object v0, p0

    check-cast v0, Lkc/d;

    invoke-virtual {v0}, Lkc/d;->h()V

    :try_start_0
    move-object v4, v1

    check-cast v4, Lkc/r;

    invoke-interface {v4, p1, v6, v7}, Lkc/r;->f0(Lkc/e;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lkc/d;->i()Z

    move-result v4

    if-nez v4, :cond_3

    sub-long/2addr p2, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lkc/d;->i()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p0}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_3
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v0}, Lkc/d;->i()Z

    throw p0

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_6
    return-void

    :goto_5
    invoke-static {p1, v4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v6, p1, Lkc/e;->b:J

    const-wide/16 v8, 0x0

    move-wide v10, p2

    invoke-static/range {v6 .. v11}, Lv4/b;->B(JJJ)V

    :cond_7
    :goto_6
    cmp-long v0, p2, v2

    if-lez v0, :cond_9

    move-object v0, v1

    check-cast v0, Lkc/v;

    invoke-virtual {v0}, Lkc/v;->f()V

    iget-object v0, p1, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_8

    iget v4, v0, Lkc/p;->c:I

    iget v6, v0, Lkc/p;->b:I

    sub-int/2addr v4, v6

    int-to-long v6, v4

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    move-object v6, p0

    check-cast v6, Ljava/io/OutputStream;

    iget-object v7, v0, Lkc/p;->a:[B

    iget v8, v0, Lkc/p;->b:I

    invoke-virtual {v6, v7, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    iget v6, v0, Lkc/p;->b:I

    add-int/2addr v6, v4

    iput v6, v0, Lkc/p;->b:I

    int-to-long v7, v4

    sub-long/2addr p2, v7

    iget-wide v9, p1, Lkc/e;->b:J

    sub-long/2addr v9, v7

    iput-wide v9, p1, Lkc/e;->b:J

    iget v4, v0, Lkc/p;->c:I

    if-ne v6, v4, :cond_7

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object v4

    iput-object v4, p1, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    goto :goto_6

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    iget v0, p0, Lkc/b;->a:I

    iget-object v1, p0, Lkc/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lkc/d;

    invoke-virtual {v1}, Lkc/d;->h()V

    :try_start_0
    iget-object p0, p0, Lkc/b;->c:Ljava/lang/Object;

    check-cast p0, Lkc/r;

    invoke-interface {p0}, Lkc/r;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lkc/d;->i()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lkc/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lkc/d;->i()Z

    throw p0

    :goto_2
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lkc/v;
    .locals 1

    iget v0, p0, Lkc/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lkc/b;->b:Ljava/lang/Object;

    check-cast p0, Lkc/d;

    return-object p0

    :goto_0
    iget-object p0, p0, Lkc/b;->c:Ljava/lang/Object;

    check-cast p0, Lkc/v;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkc/b;->a:I

    const/16 v1, 0x29

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AsyncTimeout.sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/b;->c:Ljava/lang/Object;

    check-cast p0, Lkc/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
