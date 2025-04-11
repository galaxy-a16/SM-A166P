.class public final Lokhttp3/z;
.super Lokhttp3/i0;
.source "SourceFile"


# static fields
.field public static final e:Lokhttp3/w;

.field public static final f:Lokhttp3/w;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lokhttp3/w;

.field public b:J

.field public final c:Lokio/ByteString;

.field public final d:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/z;->e:Lokhttp3/w;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/z;->f:Lokhttp3/w;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    sput-object v1, Lokhttp3/z;->g:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    sput-object v1, Lokhttp3/z;->h:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    sput-object v0, Lokhttp3/z;->i:[B

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokhttp3/w;Ljava/util/List;)V
    .locals 1

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/i0;-><init>()V

    iput-object p1, p0, Lokhttp3/z;->c:Lokio/ByteString;

    iput-object p3, p0, Lokhttp3/z;->d:Ljava/util/List;

    sget-object p3, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z;->a:Lokhttp3/w;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lokhttp3/z;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lkc/f;Z)J
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v2, Lkc/e;

    invoke-direct {v2}, Lkc/e;-><init>()V

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    move-object v3, v1

    :goto_0
    iget-object v4, v0, Lokhttp3/z;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lokhttp3/z;->c:Lokio/ByteString;

    sget-object v11, Lokhttp3/z;->i:[B

    sget-object v12, Lokhttp3/z;->h:[B

    if-ge v9, v5, :cond_8

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/y;

    iget-object v14, v13, Lokhttp3/y;->a:Lokhttp3/s;

    if-eqz v2, :cond_7

    invoke-interface {v2, v11}, Lkc/f;->write([B)Lkc/f;

    invoke-interface {v2, v10}, Lkc/f;->P(Lokio/ByteString;)Lkc/f;

    invoke-interface {v2, v12}, Lkc/f;->write([B)Lkc/f;

    if-eqz v14, :cond_1

    iget-object v10, v14, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v10, v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    invoke-virtual {v14, v11}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v15}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v15

    sget-object v6, Lokhttp3/z;->g:[B

    invoke-interface {v15, v6}, Lkc/f;->write([B)Lkc/f;

    move-result-object v6

    invoke-virtual {v14, v11}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v6

    invoke-interface {v6, v12}, Lkc/f;->write([B)Lkc/f;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, v13, Lokhttp3/y;->b:Lokhttp3/i0;

    invoke-virtual {v6}, Lokhttp3/i0;->contentType()Lokhttp3/w;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "Content-Type: "

    invoke-interface {v2, v11}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v11

    iget-object v10, v10, Lokhttp3/w;->a:Ljava/lang/String;

    invoke-interface {v11, v10}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v10

    invoke-interface {v10, v12}, Lkc/f;->write([B)Lkc/f;

    :cond_2
    invoke-virtual {v6}, Lokhttp3/i0;->contentLength()J

    move-result-wide v10

    const-wide/16 v13, -0x1

    cmp-long v15, v10, v13

    if-eqz v15, :cond_3

    const-string v13, "Content-Length: "

    invoke-interface {v2, v13}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v13

    invoke-interface {v13, v10, v11}, Lkc/f;->n0(J)Lkc/f;

    move-result-object v13

    invoke-interface {v13, v12}, Lkc/f;->write([B)Lkc/f;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lkc/e;->a()V

    return-wide v13

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_5
    :goto_3
    invoke-interface {v2, v12}, Lkc/f;->write([B)Lkc/f;

    if-eqz p2, :cond_6

    add-long/2addr v7, v10

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v2}, Lokhttp3/i0;->writeTo(Lkc/f;)V

    :goto_4
    invoke-interface {v2, v12}, Lkc/f;->write([B)Lkc/f;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_8
    if-eqz v2, :cond_b

    invoke-interface {v2, v11}, Lkc/f;->write([B)Lkc/f;

    invoke-interface {v2, v10}, Lkc/f;->P(Lokio/ByteString;)Lkc/f;

    invoke-interface {v2, v11}, Lkc/f;->write([B)Lkc/f;

    invoke-interface {v2, v12}, Lkc/f;->write([B)Lkc/f;

    if-eqz p2, :cond_a

    if-eqz v3, :cond_9

    iget-wide v0, v3, Lkc/e;->b:J

    add-long/2addr v7, v0

    invoke-virtual {v3}, Lkc/e;->a()V

    goto :goto_5

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_a
    :goto_5
    return-wide v7

    :cond_b
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final contentLength()J
    .locals 4

    iget-wide v0, p0, Lokhttp3/z;->b:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lokhttp3/z;->a(Lkc/f;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/z;->b:J

    :cond_0
    return-wide v0
.end method

.method public final contentType()Lokhttp3/w;
    .locals 0

    iget-object p0, p0, Lokhttp3/z;->a:Lokhttp3/w;

    return-object p0
.end method

.method public final writeTo(Lkc/f;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/z;->a(Lkc/f;Z)J

    return-void
.end method
