.class public final Lec/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# instance fields
.field public final a:Lec/w;

.field public final synthetic b:Lec/t;


# direct methods
.method public constructor <init>(Lec/t;Lec/w;)V
    .locals 0

    iput-object p1, p0, Lec/o;->b:Lec/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lec/o;->a:Lec/w;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lec/o;->b:Lec/t;

    iget-object v1, p0, Lec/o;->a:Lec/w;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p0}, Lec/w;->b(Lec/o;)V

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, Lec/w;->a(ZLec/o;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, p0, v2, v3}, Lec/t;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, p0

    move-object p0, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, p0

    move-object p0, v2

    :goto_1
    :try_start_2
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p0, p0, v3}, Lec/t;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_2
    invoke-static {v1}, Lac/c;->b(Ljava/io/Closeable;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :catchall_1
    move-exception v4

    :goto_3
    invoke-virtual {v0, p0, v2, v3}, Lec/t;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    invoke-static {v1}, Lac/c;->b(Ljava/io/Closeable;)V

    throw v4
.end method
