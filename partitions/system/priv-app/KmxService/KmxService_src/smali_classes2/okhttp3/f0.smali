.class public final Lokhttp3/f0;
.super Lokhttp3/i0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lokhttp3/w;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lokhttp3/w;I)V
    .locals 0

    iput p3, p0, Lokhttp3/f0;->a:I

    iput-object p1, p0, Lokhttp3/f0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/f0;->b:Lokhttp3/w;

    invoke-direct {p0}, Lokhttp3/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/f0;->a:I

    iget-object p0, p0, Lokhttp3/f0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :goto_0
    check-cast p0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lokhttp3/w;
    .locals 0

    iget-object p0, p0, Lokhttp3/f0;->b:Lokhttp3/w;

    return-object p0
.end method

.method public final writeTo(Lkc/f;)V
    .locals 2

    iget v0, p0, Lokhttp3/f0;->a:I

    iget-object p0, p0, Lokhttp3/f0;->c:Ljava/lang/Object;

    const-string v1, "sink"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/File;

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Lkc/c;

    new-instance v1, Lkc/v;

    invoke-direct {v1}, Lkc/v;-><init>()V

    invoke-direct {p0, v0, v1}, Lkc/c;-><init>(Ljava/io/InputStream;Lkc/v;)V

    :try_start_0
    invoke-interface {p1, p0}, Lkc/f;->F(Lkc/t;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    invoke-static {p1, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lokio/ByteString;

    invoke-interface {p1, p0}, Lkc/f;->P(Lokio/ByteString;)Lkc/f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
