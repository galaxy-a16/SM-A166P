.class public final Lcom/fasterxml/jackson/databind/util/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkc/g;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    const v1, 0x7fffffff

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkc/e;

    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :pswitch_1
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Lkc/o;

    iget-boolean v0, p0, Lkc/o;->b:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lkc/o;->a:Lkc/e;

    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    check-cast p0, Lkc/o;

    invoke-virtual {p0}, Lkc/o;->close()V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p0, Lkc/e;

    .line 2
    iget-wide v4, p0, Lkc/e;->b:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :cond_0
    return v3

    .line 4
    :pswitch_1
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :cond_1
    return v3

    .line 5
    :goto_0
    check-cast p0, Lkc/o;

    iget-boolean v0, p0, Lkc/o;->b:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    iget-wide v4, v0, Lkc/e;->b:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 7
    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0, v0, v1, v2}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long p0, v1, v4

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lkc/e;->readByte()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :goto_1
    return v3

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "sink"

    .line 8
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkc/e;

    invoke-virtual {p0, p1, p2, p3}, Lkc/e;->read([BII)I

    move-result p0

    return p0

    .line 9
    :pswitch_1
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_0
    return v1

    :goto_1
    const-string v0, "data"

    .line 10
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkc/o;

    iget-boolean v0, p0, Lkc/o;->b:Z

    if-nez v0, :cond_2

    array-length v0, p1

    int-to-long v2, v0

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lv4/b;->B(JJJ)V

    .line 11
    iget-object v0, p0, Lkc/o;->a:Lkc/e;

    iget-wide v2, v0, Lkc/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 12
    iget-object p0, p0, Lkc/o;->c:Lkc/t;

    invoke-interface {p0, v0, v2, v3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lkc/e;->read([BII)I

    move-result v1

    :goto_2
    return v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/e;->a:I

    const-string v1, ".inputStream()"

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lkc/o;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lkc/e;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
