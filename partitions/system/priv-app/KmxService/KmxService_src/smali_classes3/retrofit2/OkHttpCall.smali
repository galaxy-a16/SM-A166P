.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;,
        Lretrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final callFactory:Lokhttp3/d;

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private rawCall:Lokhttp3/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/o0;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/d;Lretrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/d;",
            "Lretrofit2/Converter<",
            "Lokhttp3/o0;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iput-object p2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/d;

    iput-object p4, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    return-void
.end method

.method private createRawCall()Lokhttp3/e;
    .locals 3

    iget-object v0, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/d;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object p0, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lretrofit2/RequestFactory;->create([Ljava/lang/Object;)Lokhttp3/e0;

    move-result-object p0

    check-cast v0, Lokhttp3/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "request"

    invoke-static {p0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/connection/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lokhttp3/internal/connection/i;-><init>(Lokhttp3/b0;Lokhttp3/e0;Z)V

    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    check-cast v0, Lokhttp3/internal/connection/i;

    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->clone()Lretrofit2/OkHttpCall;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lretrofit2/OkHttpCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/OkHttpCall<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/d;

    iget-object p0, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-direct {v0, v1, v2, v3, p0}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/d;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/e;

    move-result-object v3

    iput-object v3, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lokhttp3/internal/connection/i;

    invoke-virtual {v2}, Lokhttp3/internal/connection/i;->cancel()V

    :cond_2
    new-instance v2, Lretrofit2/OkHttpCall$1;

    invoke-direct {v2, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    check-cast v1, Lokhttp3/internal/connection/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lokhttp3/internal/connection/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lokhttp3/internal/connection/i;->d()V

    iget-object p0, v1, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object p0, p0, Lokhttp3/b0;->a:La5/b;

    new-instance p1, Lokhttp3/internal/connection/f;

    invoke-direct {p1, v1, v2}, Lokhttp3/internal/connection/f;-><init>(Lokhttp3/internal/connection/i;Lokhttp3/f;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, La5/b;->e:Ljava/util/AbstractCollection;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lokhttp3/internal/connection/i;->u:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    iget-object v0, v0, Lokhttp3/e0;->b:Lokhttp3/u;

    iget-object v0, v0, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, La5/b;->c(Ljava/lang/String;)Lokhttp3/internal/connection/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lokhttp3/internal/connection/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p1, Lokhttp3/internal/connection/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit p0

    invoke-virtual {p0}, La5/b;->f()Z

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    const-string p0, "Already Executed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public execute()Lretrofit2/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    iget-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    instance-of v0, v1, Ljava/io/IOException;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_0
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1
    check-cast v1, Ljava/io/IOException;

    throw v1

    :cond_2
    iget-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    :try_start_1
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/e;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    throw v0

    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-boolean v2, p0, Lretrofit2/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lokhttp3/internal/connection/i;

    invoke-virtual {v2}, Lokhttp3/internal/connection/i;->cancel()V

    :cond_4
    check-cast v1, Lokhttp3/internal/connection/i;

    iget-object v2, v1, Lokhttp3/internal/connection/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    invoke-virtual {v0}, Lkc/d;->h()V

    invoke-virtual {v1}, Lokhttp3/internal/connection/i;->d()V

    :try_start_3
    iget-object v0, v1, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v0, v0, Lokhttp3/b0;->a:La5/b;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, v0, La5/b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    invoke-virtual {v1}, Lokhttp3/internal/connection/i;->f()Lokhttp3/k0;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v2, v1, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v2, v2, Lokhttp3/b0;->a:La5/b;

    iget-object v3, v2, La5/b;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v3, v1}, La5/b;->d(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    iget-object v0, v1, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v0, v0, Lokhttp3/b0;->a:La5/b;

    iget-object v2, v0, La5/b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2, v1}, La5/b;->d(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw p0

    :cond_5
    const-string p0, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public isCanceled()Z
    .locals 2

    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;

    if-eqz v0, :cond_1

    check-cast v0, Lokhttp3/internal/connection/i;

    iget-boolean v0, v0, Lokhttp3/internal/connection/i;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseResponse(Lokhttp3/k0;)Lretrofit2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/k0;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lokhttp3/k0;->g:Lokhttp3/o0;

    new-instance v1, Lokhttp3/j0;

    invoke-direct {v1, p1}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    new-instance p1, Lretrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual {v0}, Lokhttp3/o0;->contentType()Lokhttp3/w;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/o0;->contentLength()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/w;J)V

    iput-object p1, v1, Lokhttp3/j0;->g:Lokhttp3/o0;

    invoke-virtual {v1}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object p1

    const/16 v1, 0xc8

    iget v2, p1, Lokhttp3/k0;->d:I

    if-lt v2, v1, :cond_3

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xcc

    if-eq v2, v1, :cond_2

    const/16 v1, 0xcd

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v1, v0}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/o0;)V

    :try_start_0
    iget-object p0, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    invoke-interface {p0, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->throwIfCaught()V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lokhttp3/o0;->close()V

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Lretrofit2/Utils;->buffer(Lokhttp3/o0;)Lokhttp3/o0;

    move-result-object p0

    invoke-static {p0, p1}, Lretrofit2/Response;->error(Lokhttp3/o0;Lokhttp3/k0;)Lretrofit2/Response;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lokhttp3/o0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lokhttp3/o0;->close()V

    throw p0
.end method

.method public declared-synchronized request()Lokhttp3/e0;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;

    if-eqz v0, :cond_0

    check-cast v0, Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/e;

    check-cast v0, Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    iput-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
