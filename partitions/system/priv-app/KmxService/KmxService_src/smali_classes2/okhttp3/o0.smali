.class public abstract Lokhttp3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final Companion:Lokhttp3/n0;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/n0;

    invoke-direct {v0}, Lokhttp3/n0;-><init>()V

    sput-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/o0;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lokhttp3/n0;->a(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lkc/g;Lokhttp3/w;J)Lokhttp3/o0;
    .locals 1

    .line 2
    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;JLkc/g;)Lokhttp3/o0;
    .locals 1

    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 3
    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p1, p2}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/o0;
    .locals 1

    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 4
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lokhttp3/n0;->a(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;Lokio/ByteString;)Lokhttp3/o0;
    .locals 3

    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 5
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    invoke-virtual {v0, p1}, Lkc/e;->b0(Lokio/ByteString;)V

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/w;[B)Lokhttp3/o0;
    .locals 1

    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    .line 7
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lokhttp3/n0;->c([BLokhttp3/w;)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokio/ByteString;Lokhttp3/w;)Lokhttp3/o0;
    .locals 3

    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$toResponseBody"

    .line 8
    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    invoke-virtual {v0, p0}, Lkc/e;->b0(Lokio/ByteString;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v0, p1, v1, v2}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLokhttp3/w;)Lokhttp3/o0;
    .locals 1

    .line 9
    sget-object v0, Lokhttp3/o0;->Companion:Lokhttp3/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lokhttp3/n0;->c([BLokhttp3/w;)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object p0

    invoke-interface {p0}, Lkc/g;->v0()Lcom/fasterxml/jackson/databind/util/e;

    move-result-object p0

    return-object p0
.end method

.method public final byteString()Lokio/ByteString;
    .locals 5

    invoke-virtual {p0}, Lokhttp3/o0;->contentLength()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lkc/g;->m()Lokio/ByteString;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result p0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    int-to-long v3, p0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    invoke-static {v2, v0, v1}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bytes()[B
    .locals 5

    invoke-virtual {p0}, Lokhttp3/o0;->contentLength()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lkc/g;->E()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length p0, v2

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    int-to-long v3, p0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    invoke-static {v2, v0, v1}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lokhttp3/o0;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lokhttp3/l0;

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/o0;->contentType()Lokhttp3/w;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v0, v1, v2}, Lokhttp3/l0;-><init>(Lkc/g;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/o0;->reader:Ljava/io/Reader;

    :goto_1
    return-object v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object p0

    invoke-static {p0}, Lac/c;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/w;
.end method

.method public abstract source()Lkc/g;
.end method

.method public final string()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/o0;->contentType()Lokhttp3/w;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {v0, p0}, Lac/c;->p(Lkc/g;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-interface {v0, p0}, Lkc/g;->t0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
