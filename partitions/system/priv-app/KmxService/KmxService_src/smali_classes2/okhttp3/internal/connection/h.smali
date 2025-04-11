.class public final Lokhttp3/internal/connection/h;
.super Lkc/d;
.source "SourceFile"


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lokhttp3/internal/connection/h;->k:I

    iput-object p1, p0, Lokhttp3/internal/connection/h;->l:Ljava/lang/Object;

    invoke-direct {p0}, Lkc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget v0, p0, Lokhttp3/internal/connection/h;->k:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lkc/d;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 5

    iget v0, p0, Lokhttp3/internal/connection/h;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/connection/h;->l:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/connection/i;

    invoke-virtual {p0}, Lokhttp3/internal/connection/i;->cancel()V

    return-void

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/h;->l:Ljava/lang/Object;

    check-cast v0, Lec/z;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lec/z;->e(Lokhttp3/internal/http2/ErrorCode;)V

    iget-object p0, p0, Lokhttp3/internal/connection/h;->l:Ljava/lang/Object;

    check-cast p0, Lec/z;

    iget-object p0, p0, Lec/z;->n:Lec/t;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lec/t;->q:J

    iget-wide v2, p0, Lec/t;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, p0, Lec/t;->p:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lec/t;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lec/t;->i:Lbc/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lec/t;->d:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbc/b;

    invoke-direct {v2, v1, p0}, Lbc/b;-><init>(Ljava/lang/String;Lec/t;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lbc/c;->c(Lbc/a;J)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Lkc/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/h;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
