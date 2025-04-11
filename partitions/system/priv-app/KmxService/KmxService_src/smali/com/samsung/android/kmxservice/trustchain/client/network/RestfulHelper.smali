.class public Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::RestfulHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->lambda$commonSend$0(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method private static commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 4

    const-string v0, "request ("

    const-string v1, ") : "

    invoke-static {v0, p1, v1}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrustChain::RestfulHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/network/d;

    invoke-direct {v3, p2, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/d;-><init>(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    const-string p2, "response ("

    invoke-static {p2, p1, v1}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static delete(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 2

    const-string v0, "DELETE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method private static getConnection(Ljava/net/URL;Ljava/lang/String;ILcom/samsung/android/kmxservice/trustchain/client/data/Request;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "Content-Length"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->getHeader()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method private static getErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static getResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static synthetic lambda$commonSend$0(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->getUrl()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->getBodyLength()I

    move-result v0

    invoke-static {p0, p2, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->getConnection(Ljava/net/URL;Ljava/lang/String;ILcom/samsung/android/kmxservice/trustchain/client/data/Request;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->writeStream(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->getUrl()Ljava/net/URL;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->getConnection(Ljava/net/URL;Ljava/lang/String;ILcom/samsung/android/kmxservice/trustchain/client/data/Request;)Ljava/net/HttpURLConnection;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->isSuccess(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->getResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->getErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;-><init>(ILjava/lang/String;)V

    return-object p2
.end method

.method public static makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-static {p0, p1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 2

    const-string v0, "PATCH"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public static post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 2

    const-string v0, "POST"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public static put(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 2

    const-string v0, "PUT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->commonSend(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method private static writeStream(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
