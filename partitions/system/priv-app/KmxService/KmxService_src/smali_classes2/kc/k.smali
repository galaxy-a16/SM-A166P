.class public final Lkc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public a:B

.field public final b:Lkc/o;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Lkc/l;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lkc/t;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkc/o;

    invoke-direct {v0, p1}, Lkc/o;-><init>(Lkc/t;)V

    iput-object v0, p0, Lkc/k;->b:Lkc/o;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lkc/k;->c:Ljava/util/zip/Inflater;

    new-instance v1, Lkc/l;

    invoke-direct {v1, v0, p1}, Lkc/l;-><init>(Lkc/o;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lkc/k;->d:Lkc/l;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lkc/k;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 3

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(this, *args)"

    invoke-static {p0, p1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Lkc/e;JJ)V
    .locals 5

    iget-object p1, p1, Lkc/e;->a:Lkc/p;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :goto_0
    iget v1, p1, Lkc/p;->c:I

    iget v2, p1, Lkc/p;->b:I

    sub-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object p1, p1, Lkc/p;->f:Lkc/p;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    throw v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_3

    iget v3, p1, Lkc/p;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    iget p3, p1, Lkc/p;->c:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    iget-object v3, p0, Lkc/k;->e:Ljava/util/zip/CRC32;

    iget-object v4, p1, Lkc/p;->a:[B

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lkc/p;->f:Lkc/p;

    if-eqz p1, :cond_2

    move-wide p2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v0

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lkc/k;->d:Lkc/l;

    invoke-virtual {p0}, Lkc/l;->close()V

    return-void
.end method

.method public final read(Lkc/e;J)J
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-string v0, "sink"

    invoke-static {v7, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    const/4 v10, 0x1

    if-ltz v2, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_16

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    iget-byte v0, v6, Lkc/k;->a:B

    iget-object v11, v6, Lkc/k;->e:Ljava/util/zip/CRC32;

    const-wide/16 v12, -0x1

    iget-object v15, v6, Lkc/k;->b:Lkc/o;

    if-nez v0, :cond_11

    const-wide/16 v0, 0xa

    invoke-virtual {v15, v0, v1}, Lkc/o;->j0(J)V

    iget-object v14, v15, Lkc/o;->a:Lkc/e;

    const-wide/16 v0, 0x3

    invoke-virtual {v14, v0, v1}, Lkc/e;->t(J)B

    move-result v20

    shr-int/lit8 v0, v20, 0x1

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_2

    move/from16 v21, v10

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move/from16 v21, v0

    :goto_1
    if-eqz v21, :cond_3

    iget-object v1, v15, Lkc/o;->a:Lkc/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    :cond_3
    invoke-virtual {v15}, Lkc/o;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v2, v0, v1}, Lkc/k;->a(IILjava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-virtual {v15, v0, v1}, Lkc/o;->skip(J)V

    shr-int/lit8 v0, v20, 0x2

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_4

    move v0, v10

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const v22, 0xff00

    const v23, 0xffff

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {v15, v1, v2}, Lkc/o;->j0(J)V

    if-eqz v21, :cond_5

    iget-object v1, v15, Lkc/o;->a:Lkc/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    :cond_5
    invoke-virtual {v14}, Lkc/e;->readShort()S

    move-result v0

    and-int v0, v0, v23

    and-int v1, v0, v22

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    int-to-long v4, v0

    invoke-virtual {v15, v4, v5}, Lkc/o;->j0(J)V

    if-eqz v21, :cond_6

    iget-object v1, v15, Lkc/o;->a:Lkc/e;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v16, v4

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    move-wide/from16 v0, v16

    goto :goto_3

    :cond_6
    move-wide v0, v4

    :goto_3
    invoke-virtual {v15, v0, v1}, Lkc/o;->skip(J)V

    :cond_7
    shr-int/lit8 v0, v20, 0x3

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_8

    move v0, v10

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    const-wide/16 v24, 0x1

    if-eqz v0, :cond_b

    const/16 v19, 0x0

    const-wide/16 v0, 0x0

    const-wide v17, 0x7fffffffffffffffL

    move-object/from16 v26, v14

    move-object v14, v15

    move-object v4, v15

    move-wide v15, v0

    invoke-virtual/range {v14 .. v19}, Lkc/o;->a(JJB)J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-eqz v0, :cond_a

    if-eqz v21, :cond_9

    iget-object v1, v4, Lkc/o;->a:Lkc/e;

    const-wide/16 v2, 0x0

    add-long v16, v14, v24

    move-object/from16 v0, p0

    move-object v12, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    goto :goto_5

    :cond_9
    move-object v12, v4

    :goto_5
    add-long v14, v14, v24

    invoke-virtual {v12, v14, v15}, Lkc/o;->skip(J)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    move-object/from16 v26, v14

    move-object v12, v15

    :goto_6
    shr-int/lit8 v0, v20, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_c

    move v0, v10

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_f

    const/16 v19, 0x0

    const-wide/16 v15, 0x0

    const-wide v17, 0x7fffffffffffffffL

    move-object v14, v12

    invoke-virtual/range {v14 .. v19}, Lkc/o;->a(JJB)J

    move-result-wide v13

    const-wide/16 v0, -0x1

    cmp-long v2, v13, v0

    if-eqz v2, :cond_e

    if-eqz v21, :cond_d

    iget-object v1, v12, Lkc/o;->a:Lkc/e;

    const-wide/16 v2, 0x0

    add-long v4, v13, v24

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    :cond_d
    add-long v13, v13, v24

    invoke-virtual {v12, v13, v14}, Lkc/o;->skip(J)V

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_f
    :goto_8
    if-eqz v21, :cond_10

    const-wide/16 v0, 0x2

    invoke-virtual {v12, v0, v1}, Lkc/o;->j0(J)V

    invoke-virtual/range {v26 .. v26}, Lkc/e;->readShort()S

    move-result v0

    and-int v0, v0, v23

    and-int v1, v0, v22

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-static {v0, v1, v2}, Lkc/k;->a(IILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->reset()V

    :cond_10
    iput-byte v10, v6, Lkc/k;->a:B

    goto :goto_9

    :cond_11
    move-object v12, v15

    :goto_9
    iget-byte v0, v6, Lkc/k;->a:B

    const/4 v1, 0x2

    if-ne v0, v10, :cond_13

    iget-wide v2, v7, Lkc/e;->b:J

    iget-object v0, v6, Lkc/k;->d:Lkc/l;

    invoke-virtual {v0, v7, v8, v9}, Lkc/l;->read(Lkc/e;J)J

    move-result-wide v8

    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-eqz v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lkc/k;->b(Lkc/e;JJ)V

    return-wide v8

    :cond_12
    iput-byte v1, v6, Lkc/k;->a:B

    :cond_13
    iget-byte v0, v6, Lkc/k;->a:B

    if-ne v0, v1, :cond_15

    invoke-virtual {v12}, Lkc/o;->b()I

    move-result v0

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-static {v0, v1, v2}, Lkc/k;->a(IILjava/lang/String;)V

    invoke-virtual {v12}, Lkc/o;->b()I

    move-result v0

    iget-object v1, v6, Lkc/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-static {v0, v1, v2}, Lkc/k;->a(IILjava/lang/String;)V

    const/4 v0, 0x3

    iput-byte v0, v6, Lkc/k;->a:B

    invoke-virtual {v12}, Lkc/o;->G()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_a
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_16
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v8, v9}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lkc/k;->b:Lkc/o;

    invoke-virtual {p0}, Lkc/o;->timeout()Lkc/v;

    move-result-object p0

    return-object p0
.end method
