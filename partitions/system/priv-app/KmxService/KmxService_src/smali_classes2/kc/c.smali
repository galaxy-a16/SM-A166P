.class public final Lkc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkc/v;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkc/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkc/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkc/s;Lkc/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkc/c;->a:I

    .line 2
    iput-object p1, p0, Lkc/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkc/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget v0, p0, Lkc/c;->a:I

    iget-object v1, p0, Lkc/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lkc/d;

    invoke-virtual {v1}, Lkc/d;->h()V

    :try_start_0
    iget-object p0, p0, Lkc/c;->c:Ljava/lang/Object;

    check-cast p0, Lkc/t;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
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
    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read(Lkc/e;J)J
    .locals 4

    iget v0, p0, Lkc/c;->a:I

    iget-object v1, p0, Lkc/c;->c:Ljava/lang/Object;

    iget-object p0, p0, Lkc/c;->b:Ljava/lang/Object;

    const-string v2, "sink"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkc/d;

    invoke-virtual {p0}, Lkc/d;->h()V

    :try_start_0
    check-cast v1, Lkc/t;

    invoke-interface {v1, p1, p2, p3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkc/d;->i()Z

    move-result p3

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lkc/d;->i()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lkc/d;->i()Z

    throw p1

    :goto_2
    invoke-static {p1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v2, 0x1

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    :try_start_2
    check-cast v1, Lkc/v;

    invoke-virtual {v1}, Lkc/v;->f()V

    invoke-virtual {p1, v2}, Lkc/e;->N(I)Lkc/p;

    move-result-object v0

    iget v1, v0, Lkc/p;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    check-cast p0, Ljava/io/InputStream;

    iget-object p3, v0, Lkc/p;->a:[B

    iget v1, v0, Lkc/p;->c:I

    invoke-virtual {p0, p3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_5

    iget p0, v0, Lkc/p;->b:I

    iget p2, v0, Lkc/p;->c:I

    if-ne p0, p2, :cond_4

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object p0

    iput-object p0, p1, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_4

    :cond_5
    iget p2, v0, Lkc/p;->c:I

    add-int/2addr p2, p0

    iput p2, v0, Lkc/p;->c:I

    iget-wide p2, p1, Lkc/e;->b:J

    int-to-long v2, p0

    add-long/2addr p2, v2

    iput-wide p2, p1, Lkc/e;->b:J
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    return-wide v2

    :catch_1
    move-exception p0

    invoke-static {p0}, Li4/f;->z(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    throw p0

    :cond_7
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lkc/v;
    .locals 1

    iget v0, p0, Lkc/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lkc/c;->b:Ljava/lang/Object;

    check-cast p0, Lkc/d;

    return-object p0

    :goto_0
    iget-object p0, p0, Lkc/c;->c:Ljava/lang/Object;

    check-cast p0, Lkc/v;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkc/c;->a:I

    const/16 v1, 0x29

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AsyncTimeout.source("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/c;->c:Ljava/lang/Object;

    check-cast p0, Lkc/t;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "source("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkc/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

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
