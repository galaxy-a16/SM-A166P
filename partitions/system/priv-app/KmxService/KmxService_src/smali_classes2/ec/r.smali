.class public final Lec/r;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lec/t;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lec/t;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lec/r;->e:I

    iput-object p2, p0, Lec/r;->f:Lec/t;

    iput p3, p0, Lec/r;->g:I

    iput-object p4, p0, Lec/r;->h:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget v0, p0, Lec/r;->e:I

    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lec/r;->f:Lec/t;

    :try_start_0
    iget v3, p0, Lec/r;->g:I

    iget-object p0, p0, Lec/r;->h:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "statusCode"

    invoke-static {p0, v4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lec/t;->B:Lec/a0;

    invoke-virtual {v4, v3, p0}, Lec/a0;->x(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lec/t;->b(Ljava/io/IOException;)V

    :goto_0
    return-wide v1

    :pswitch_1
    iget-object v0, p0, Lec/r;->f:Lec/t;

    iget-object v0, v0, Lec/t;->l:Ll4/e;

    iget-object v3, p0, Lec/r;->h:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "errorCode"

    invoke-static {v3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lec/r;->f:Lec/t;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lec/r;->f:Lec/t;

    iget-object v3, v3, Lec/t;->E:Ljava/util/LinkedHashSet;

    iget p0, p0, Lec/r;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_1
    iget-object v0, p0, Lec/r;->f:Lec/t;

    iget-object v0, v0, Lec/t;->l:Ll4/e;

    iget-object v3, p0, Lec/r;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "requestHeaders"

    invoke-static {v3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    iget-object v0, p0, Lec/r;->f:Lec/t;

    iget-object v0, v0, Lec/t;->B:Lec/a0;

    iget v3, p0, Lec/r;->g:I

    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v3, v4}, Lec/a0;->x(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lec/r;->f:Lec/t;

    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v3, p0, Lec/r;->f:Lec/t;

    iget-object v3, v3, Lec/t;->E:Ljava/util/LinkedHashSet;

    iget p0, p0, Lec/r;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_2
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
