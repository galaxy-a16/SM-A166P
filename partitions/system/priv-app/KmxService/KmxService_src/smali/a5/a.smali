.class public final synthetic La5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/f;
.implements Lc0/y;
.implements Landroidx/activity/result/c;
.implements Landroidx/core/os/e;
.implements Lu2/a;
.implements Lt2/i;
.implements Lc0/d;
.implements Lr3/b;
.implements Lr3/d;
.implements Lg4/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, La5/a;->a:I

    iput-object p1, p0, La5/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;

    iget p0, p0, La5/a;->a:I

    check-cast p1, Landroidx/activity/result/b;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;->e(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;ILandroidx/activity/result/b;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, La5/a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v0, La5/a;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast v0, Lm2/d;

    move-object/from16 v1, p1

    check-cast v1, Lm2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lm2/b;->a:Ljava/net/URL;

    const-string v6, "CctTransportBackend"

    invoke-static {v6}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    const-string v5, "Making request to: %s"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v1, Lm2/b;->a:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v7, v0, Lm2/d;->g:I

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v5, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v7, "POST"

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v7, v3, [Ljava/lang/Object;

    const-string v9, "3.1.8"

    aput-object v9, v7, v2

    const-string v9, "datatransport/%s android/"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "User-Agent"

    invoke-virtual {v5, v9, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v5, v7, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "application/json"

    const-string v11, "Content-Type"

    invoke-virtual {v5, v11, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept-Encoding"

    invoke-virtual {v5, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lm2/b;->c:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v12, "X-Goog-Api-Key"

    invoke-virtual {v5, v12, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v12, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v14, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v0, v0, Lm2/d;->a:Lp5/c;

    iget-object v1, v1, Lm2/b;->b:Ln2/q;

    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v15, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v15, v1}, Lp5/c;->o(Ljava/io/BufferedWriter;Ln2/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v10, :cond_2

    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "Status Code: %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "Content-Type: %s"

    invoke-virtual {v5, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v1}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding: %s"

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v1}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    new-instance v1, Lm2/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v12, v13}, Lm2/c;-><init>(ILjava/net/URL;J)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_5
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Ln2/o;->a(Ljava/io/BufferedReader;)Ln2/o;

    move-result-object v3

    iget-wide v3, v3, Ln2/o;->a:J

    new-instance v5, Lm2/c;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3, v4}, Lm2/c;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    move-object v1, v5

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v2

    :cond_b
    :goto_3
    const-string v1, "Location"

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm2/c;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v12, v13}, Lm2/c;-><init>(ILjava/net/URL;J)V

    move-object v1, v2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_c

    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    throw v1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t encode request, returning with 400"

    invoke-static {v6, v1, v0}, Lcom/fasterxml/jackson/annotation/i0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lm2/c;

    const/16 v0, 0x190

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v12, v13}, Lm2/c;-><init>(ILjava/net/URL;J)V

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    const-string v1, "Couldn\'t open connection, returning with 500"

    invoke-static {v6, v1, v0}, Lcom/fasterxml/jackson/annotation/i0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lm2/c;

    const/16 v0, 0x1f4

    invoke-direct {v1, v0, v2, v12, v13}, Lm2/c;-><init>(ILjava/net/URL;J)V

    :goto_6
    return-object v1

    :goto_7
    check-cast v0, Ljava/util/Map;

    move-object/from16 v1, p1

    check-cast v1, Landroid/database/Cursor;

    sget-object v4, Lt2/k;->f:Ll2/c;

    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_d

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-instance v4, Lt2/j;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lt2/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    return-object v4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/y1;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/y1;->a()V

    return-void
.end method

.method public c(Lr3/h;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p0, Lu9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Ljava/io/IOException;

    check-cast p1, Lr3/o;

    iget-object v0, p1, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lr3/o;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Lva/n;->k(Ljava/lang/String;Z)V

    iget-boolean v1, p1, Lr3/o;->d:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Lr3/o;->f:Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p1, Lr3/o;->f:Ljava/lang/Exception;

    if-nez p0, :cond_5

    iget-object p0, p1, Lr3/o;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "SERVICE_NOT_AVAILABLE"

    if-eqz p0, :cond_4

    const-string v0, "registration_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unregistered"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "error"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "INSTANCE_ID_RESET"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_1
    new-instance p1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    iget-object p1, p1, Lr3/o;->f:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_7
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Task is already canceled."

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method

.method public d(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iget p0, p0, La5/a;->a:I

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lv/n;

    invoke-direct {v2, p0, v0, p1}, Lv/n;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/l0;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lv/n;->run()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(I)V

    :goto_2
    return v0

    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p0, v0, :cond_6

    const-string p0, "DRAGGING"

    goto :goto_4

    :cond_6
    const-string p0, "SETTLING"

    :goto_4
    const-string v0, " should not be set externally."

    invoke-static {v1, p0, v0}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lr3/h;)V
    .locals 0

    iget p1, p0, La5/a;->a:I

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/firebase/messaging/c0;

    sget p1, Lcom/google/firebase/messaging/b0;->d:I

    iget-object p0, p0, Lcom/google/firebase/messaging/c0;->b:Lr3/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr3/i;->c(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/firebase/messaging/a0;->a(Landroid/content/Intent;)V

    return-void

    :goto_0
    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()Ljava/lang/Object;
    .locals 6

    iget v0, p0, La5/a;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lt2/c;

    check-cast p0, Lt2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lq2/a;->e:I

    new-instance v0, Lp1/i;

    invoke-direct {v0, v1}, Lp1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-virtual {p0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lr2/b;

    const/4 v5, 0x4

    invoke-direct {v3, p0, v1, v0, v5}, Lr2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq2/a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :pswitch_1
    check-cast p0, Ls2/i;

    iget-object p0, p0, Ls2/i;->i:Lt2/c;

    check-cast p0, Lt2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lt2/g;

    invoke-direct {v0, p0, v3}, Lt2/g;-><init>(Lt2/k;I)V

    invoke-virtual {p0, v0}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    return-object v2

    :pswitch_2
    check-cast p0, Lt2/d;

    check-cast p0, Lt2/k;

    iget-object v0, p0, Lt2/k;->b:Lv2/a;

    check-cast v0, Lv2/b;

    invoke-virtual {v0}, Lv2/b;->a()J

    move-result-wide v0

    iget-object v2, p0, Lt2/k;->d:Lt2/a;

    iget-wide v2, v2, Lt2/a;->d:J

    sub-long/2addr v0, v2

    new-instance v2, Lt2/e;

    invoke-direct {v2, p0, v0, v1}, Lt2/e;-><init>(Lt2/k;J)V

    invoke-virtual {p0, v2}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Ls2/k;

    iget-object v0, p0, Ls2/k;->b:Lt2/d;

    check-cast v0, Lt2/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/firebase/concurrent/h;

    invoke-direct {v4, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {v0, v4}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/j;

    iget-object v4, p0, Ls2/k;->c:Ls2/l;

    check-cast v4, Ls2/d;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5, v3}, Ls2/d;->a(Lo2/j;IZ)V

    goto :goto_1

    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ln2/l;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, La5/a;->a:I

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object p0

    :goto_0
    check-cast p0, La5/r;

    new-instance v6, Lh5/c;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Ln2/l;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lv4/g;

    invoke-virtual {p1, v0}, Ln2/l;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/g;

    invoke-virtual {v0}, Lv4/g;->d()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lh5/d;

    invoke-static {v0}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln2/l;->b(La5/r;)Ljava/util/Set;

    move-result-object v3

    const-class v0, Lp5/b;

    invoke-virtual {p1, v0}, Ln2/l;->e(Ljava/lang/Class;)Lj5/a;

    move-result-object v4

    invoke-virtual {p1, p0}, Ln2/l;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lh5/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lj5/a;Ljava/util/concurrent/Executor;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
