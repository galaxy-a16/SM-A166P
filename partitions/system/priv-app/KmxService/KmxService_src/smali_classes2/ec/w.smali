.class public final Lec/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lcom/google/gson/internal/d;


# instance fields
.field public final a:Lec/v;

.field public final b:Lec/c;

.field public final c:Lkc/g;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/gson/internal/d;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/d;-><init>(II)V

    sput-object v0, Lec/w;->f:Lcom/google/gson/internal/d;

    const-class v0, Lec/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lec/w;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lkc/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/w;->c:Lkc/g;

    iput-boolean p2, p0, Lec/w;->d:Z

    new-instance p2, Lec/v;

    invoke-direct {p2, p1}, Lec/v;-><init>(Lkc/g;)V

    iput-object p2, p0, Lec/w;->a:Lec/v;

    new-instance p1, Lec/c;

    invoke-direct {p1, p2}, Lec/c;-><init>(Lec/v;)V

    iput-object p1, p0, Lec/w;->b:Lec/c;

    return-void
.end method


# virtual methods
.method public final a(ZLec/o;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "handler"

    invoke-static {v1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lec/w;->c:Lkc/g;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lkc/g;->j0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Lec/w;->c:Lkc/g;

    invoke-static {v3}, Lac/c;->q(Lkc/g;)I

    move-result v3

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_3e

    iget-object v5, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v5}, Lkc/g;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v6}, Lkc/g;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v7}, Lkc/g;->readInt()I

    move-result v7

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    sget-object v9, Lec/w;->e:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    const/4 v15, 0x1

    if-eqz v10, :cond_0

    invoke-static {v7, v3, v5, v6, v15}, Lec/f;->a(IIIIZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x4

    if-eqz p1, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected a SETTINGS frame but was "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lec/f;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v5, v4, :cond_2

    aget-object v2, v3, v5

    goto :goto_0

    :cond_2
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "0x%02x"

    invoke-static {v2, v3}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v10, 0x2

    const-wide/16 v13, 0x0

    const/4 v11, 0x5

    const/16 v12, 0x5b

    packed-switch v5, :pswitch_data_0

    iget-object v0, v0, Lec/w;->c:Lkc/g;

    int-to-long v1, v3

    invoke-interface {v0, v1, v2}, Lkc/g;->skip(J)V

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {v0, v1, v3, v7}, Lec/w;->x(Lec/o;II)V

    goto/16 :goto_16

    :pswitch_1
    invoke-virtual {v0, v1, v3, v7}, Lec/w;->d(Lec/o;II)V

    goto/16 :goto_16

    :pswitch_2
    invoke-virtual {v0, v1, v3, v6, v7}, Lec/w;->t(Lec/o;III)V

    goto/16 :goto_16

    :pswitch_3
    if-eqz v7, :cond_6

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_4

    iget-object v2, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v2}, Lkc/g;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :cond_4
    iget-object v4, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v4}, Lkc/g;->readInt()I

    move-result v4

    and-int/2addr v4, v8

    add-int/lit8 v3, v3, -0x4

    invoke-static {v3, v6, v2}, Lcom/google/gson/internal/d;->b(III)I

    move-result v3

    invoke-virtual {v0, v3, v2, v6, v7}, Lec/w;->i(IIII)Ljava/util/List;

    move-result-object v0

    const-string v2, "requestHeaders"

    invoke-static {v0, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    :try_start_1
    iget-object v2, v1, Lec/t;->E:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v4, v0}, Lec/t;->z(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto/16 :goto_16

    :cond_5
    :try_start_2
    iget-object v2, v1, Lec/t;->E:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v2, v1, Lec/t;->j:Lbc/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] onRequest"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v3, Lec/r;

    const/16 v21, 0x2

    move-object/from16 v16, v3

    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v0

    invoke-direct/range {v16 .. v21}, Lec/r;-><init>(Ljava/lang/String;Lec/t;ILjava/lang/Object;I)V

    invoke-virtual {v2, v3, v13, v14}, Lbc/c;->c(Lbc/a;J)V

    goto/16 :goto_16

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-nez v7, :cond_14

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_8

    if-nez v3, :cond_7

    goto/16 :goto_16

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_13

    new-instance v5, Lec/e0;

    invoke-direct {v5}, Lec/e0;-><init>()V

    invoke-static {v2, v3}, Lp9/d;->v0(II)Lxb/f;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lp9/d;->r0(Lxb/d;I)Lxb/d;

    move-result-object v2

    iget v3, v2, Lxb/d;->a:I

    iget v6, v2, Lxb/d;->b:I

    iget v2, v2, Lxb/d;->c:I

    if-ltz v2, :cond_9

    if-gt v3, v6, :cond_12

    goto :goto_2

    :cond_9
    if-lt v3, v6, :cond_12

    :goto_2
    iget-object v7, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v7}, Lkc/g;->readShort()S

    move-result v8

    sget-object v12, Lac/c;->a:[B

    const v12, 0xffff

    and-int/2addr v8, v12

    invoke-interface {v7}, Lkc/g;->readInt()I

    move-result v7

    if-eq v8, v10, :cond_f

    const/4 v12, 0x3

    if-eq v8, v12, :cond_e

    if-eq v8, v9, :cond_c

    if-eq v8, v11, :cond_a

    goto :goto_3

    :cond_a
    if-lt v7, v4, :cond_b

    const v12, 0xffffff

    if-gt v7, v12, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v1, v7}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ltz v7, :cond_d

    const/4 v8, 0x7

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v8, v9

    goto :goto_3

    :cond_f
    if-eqz v7, :cond_11

    if-ne v7, v15, :cond_10

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_3
    invoke-virtual {v5, v8, v7}, Lec/e0;->b(II)V

    if-eq v3, v6, :cond_12

    add-int/2addr v3, v2

    goto :goto_2

    :cond_12
    iget-object v0, v1, Lec/o;->b:Lec/t;

    iget-object v2, v0, Lec/t;->i:Lbc/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lec/t;->d:Ljava/lang/String;

    const-string v4, " applyAndAckSettings"

    invoke-static {v3, v0, v4}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lec/n;

    invoke-direct {v3, v0, v1, v5}, Lec/n;-><init>(Ljava/lang/String;Lec/o;Lec/e0;)V

    invoke-virtual {v2, v3, v13, v14}, Lbc/c;->c(Lbc/a;J)V

    goto/16 :goto_16

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v1, v3}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v3, v9, :cond_1d

    if-eqz v7, :cond_1c

    iget-object v0, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v0}, Lkc/g;->readInt()I

    move-result v0

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->Companion:Lec/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_17

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v8

    if-ne v8, v0, :cond_15

    move v8, v15

    goto :goto_5

    :cond_15
    move v8, v2

    :goto_5
    if-eqz v8, :cond_16

    move-object v3, v6

    goto :goto_6

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_17
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_1b

    iget-object v0, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_18

    and-int/lit8 v1, v7, 0x1

    if-nez v1, :cond_18

    move v2, v15

    :cond_18
    if-eqz v2, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lec/r;

    const/4 v2, 0x0

    move-object v9, v1

    move-object v11, v0

    move v12, v7

    move-wide v4, v13

    move-object v13, v3

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lec/r;-><init>(Ljava/lang/String;Lec/t;ILjava/lang/Object;I)V

    iget-object v0, v0, Lec/t;->j:Lbc/c;

    invoke-virtual {v0, v1, v4, v5}, Lbc/c;->c(Lbc/a;J)V

    goto/16 :goto_16

    :cond_19
    invoke-virtual {v0, v7}, Lec/t;->i(I)Lec/z;

    move-result-object v1

    if-eqz v1, :cond_3d

    monitor-enter v1

    :try_start_3
    iget-object v0, v1, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_1a

    iput-object v3, v1, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1a
    monitor-exit v1

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v2, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM length: "

    const-string v2, " != 4"

    invoke-static {v1, v3, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-ne v3, v11, :cond_1f

    if-eqz v7, :cond_1e

    iget-object v0, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v0}, Lkc/g;->readInt()I

    invoke-interface {v0}, Lkc/g;->readByte()B

    goto/16 :goto_16

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PRIORITY length: "

    const-string v2, " != 5"

    invoke-static {v1, v3, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move-wide v4, v13

    if-eqz v7, :cond_29

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_20

    move v8, v15

    goto :goto_7

    :cond_20
    move v8, v2

    :goto_7
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_21

    iget-object v9, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v9}, Lkc/g;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    goto :goto_8

    :cond_21
    move v9, v2

    :goto_8
    and-int/lit8 v11, v6, 0x20

    if-eqz v11, :cond_22

    iget-object v11, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v11}, Lkc/g;->readInt()I

    invoke-interface {v11}, Lkc/g;->readByte()B

    add-int/lit8 v3, v3, -0x5

    :cond_22
    invoke-static {v3, v6, v9}, Lcom/google/gson/internal/d;->b(III)I

    move-result v3

    invoke-virtual {v0, v3, v9, v6, v7}, Lec/w;->i(IIII)Ljava/util/List;

    move-result-object v13

    const-string v0, "headerBlock"

    invoke-static {v13, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_23

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_23

    move v2, v15

    :cond_23
    iget-object v3, v1, Lec/o;->b:Lec/t;

    if-eqz v2, :cond_24

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onHeaders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lec/q;

    move-object v9, v0

    move-object v11, v3

    move v12, v7

    move v14, v8

    invoke-direct/range {v9 .. v14}, Lec/q;-><init>(Ljava/lang/String;Lec/t;ILjava/util/List;Z)V

    iget-object v1, v3, Lec/t;->j:Lbc/c;

    invoke-virtual {v1, v0, v4, v5}, Lbc/c;->c(Lbc/a;J)V

    goto/16 :goto_15

    :cond_24
    monitor-enter v3

    :try_start_4
    iget-object v0, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v0, v7}, Lec/t;->d(I)Lec/z;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, v1, Lec/o;->b:Lec/t;

    iget-boolean v2, v0, Lec/t;->g:Z

    if-eqz v2, :cond_25

    goto :goto_9

    :cond_25
    iget v2, v0, Lec/t;->e:I

    if-gt v7, v2, :cond_26

    goto :goto_9

    :cond_26
    rem-int/lit8 v2, v7, 0x2

    iget v0, v0, Lec/t;->f:I

    rem-int/2addr v0, v10

    if-ne v2, v0, :cond_27

    goto :goto_9

    :cond_27
    invoke-static {v13}, Lac/c;->s(Ljava/util/List;)Lokhttp3/s;

    move-result-object v14

    new-instance v0, Lec/z;

    iget-object v11, v1, Lec/o;->b:Lec/t;

    const/4 v2, 0x0

    move-object v9, v0

    move v10, v7

    move v6, v12

    move v12, v2

    move v13, v8

    invoke-direct/range {v9 .. v14}, Lec/z;-><init>(ILec/t;ZZLokhttp3/s;)V

    iget-object v2, v1, Lec/o;->b:Lec/t;

    iput v7, v2, Lec/t;->e:I

    iget-object v2, v2, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lec/o;->b:Lec/t;

    iget-object v2, v2, Lec/t;->h:Lbc/f;

    invoke-virtual {v2}, Lbc/f;->f()Lbc/c;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lec/o;->b:Lec/t;

    iget-object v9, v9, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onStream"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lec/l;

    invoke-direct {v7, v6, v0, v1}, Lec/l;-><init>(Ljava/lang/String;Lec/z;Lec/o;)V

    invoke-virtual {v2, v7, v4, v5}, Lbc/c;->c(Lbc/a;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_9
    monitor-exit v3

    goto/16 :goto_15

    :cond_28
    monitor-exit v3

    invoke-static {v13}, Lac/c;->s(Ljava/util/List;)Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lec/z;->i(Lokhttp3/s;Z)V

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    move v8, v12

    move-wide v4, v13

    if-eqz v7, :cond_3c

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_2a

    move/from16 v16, v15

    goto :goto_a

    :cond_2a
    move/from16 v16, v2

    :goto_a
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_2b

    move v9, v15

    goto :goto_b

    :cond_2b
    move v9, v2

    :goto_b
    if-nez v9, :cond_3b

    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_2c

    iget-object v9, v0, Lec/w;->c:Lkc/g;

    invoke-interface {v9}, Lkc/g;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    move v14, v9

    goto :goto_c

    :cond_2c
    move v14, v2

    :goto_c
    invoke-static {v3, v6, v14}, Lcom/google/gson/internal/d;->b(III)I

    move-result v3

    iget-object v6, v0, Lec/w;->c:Lkc/g;

    const-string v9, "source"

    invoke-static {v6, v9}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_2d

    and-int/lit8 v9, v7, 0x1

    if-nez v9, :cond_2d

    goto :goto_d

    :cond_2d
    move v15, v2

    :goto_d
    if-eqz v15, :cond_2e

    iget-object v1, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lkc/e;

    invoke-direct {v13}, Lkc/e;-><init>()V

    int-to-long v9, v3

    invoke-interface {v6, v9, v10}, Lkc/g;->j0(J)V

    invoke-interface {v6, v13, v9, v10}, Lkc/t;->read(Lkc/e;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onData"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Lec/p;

    move-object v9, v2

    move-object v11, v1

    move v12, v7

    move v8, v14

    move v14, v3

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lec/p;-><init>(Ljava/lang/String;Lec/t;ILkc/e;IZ)V

    iget-object v1, v1, Lec/t;->j:Lbc/c;

    invoke-virtual {v1, v2, v4, v5}, Lbc/c;->c(Lbc/a;J)V

    goto/16 :goto_14

    :cond_2e
    move v8, v14

    iget-object v9, v1, Lec/o;->b:Lec/t;

    invoke-virtual {v9, v7}, Lec/t;->d(I)Lec/z;

    move-result-object v9

    if-nez v9, :cond_2f

    iget-object v2, v1, Lec/o;->b:Lec/t;

    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2, v7, v4}, Lec/t;->z(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v1, v1, Lec/o;->b:Lec/t;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lec/t;->x(J)V

    invoke-interface {v6, v2, v3}, Lkc/g;->skip(J)V

    goto/16 :goto_14

    :cond_2f
    iget-object v1, v9, Lec/z;->g:Lec/y;

    int-to-long v10, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_30
    :goto_e
    cmp-long v3, v10, v4

    if-lez v3, :cond_39

    iget-object v3, v1, Lec/y;->f:Lec/z;

    monitor-enter v3

    :try_start_5
    iget-boolean v7, v1, Lec/y;->e:Z

    iget-object v12, v1, Lec/y;->b:Lkc/e;

    iget-wide v12, v12, Lkc/e;->b:J

    add-long/2addr v12, v10

    iget-wide v14, v1, Lec/y;->d:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    cmp-long v12, v12, v14

    if-lez v12, :cond_31

    const/4 v12, 0x1

    goto :goto_f

    :cond_31
    move v12, v2

    :goto_f
    monitor-exit v3

    if-eqz v12, :cond_32

    invoke-interface {v6, v10, v11}, Lkc/g;->skip(J)V

    iget-object v1, v1, Lec/y;->f:Lec/z;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lec/z;->e(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_13

    :cond_32
    if-eqz v7, :cond_33

    invoke-interface {v6, v10, v11}, Lkc/g;->skip(J)V

    goto :goto_13

    :cond_33
    iget-object v3, v1, Lec/y;->a:Lkc/e;

    invoke-interface {v6, v3, v10, v11}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-eqz v3, :cond_38

    sub-long/2addr v10, v12

    iget-object v3, v1, Lec/y;->f:Lec/z;

    monitor-enter v3

    :try_start_6
    iget-boolean v7, v1, Lec/y;->c:Z

    if-eqz v7, :cond_34

    iget-object v7, v1, Lec/y;->a:Lkc/e;

    iget-wide v13, v7, Lkc/e;->b:J

    invoke-virtual {v7}, Lkc/e;->a()V

    goto :goto_12

    :cond_34
    iget-object v7, v1, Lec/y;->b:Lkc/e;

    iget-wide v12, v7, Lkc/e;->b:J

    cmp-long v12, v12, v4

    if-nez v12, :cond_35

    const/4 v12, 0x1

    goto :goto_10

    :cond_35
    move v12, v2

    :goto_10
    iget-object v13, v1, Lec/y;->a:Lkc/e;

    invoke-virtual {v7, v13}, Lkc/e;->F(Lkc/t;)J

    if-eqz v12, :cond_37

    iget-object v7, v1, Lec/y;->f:Lec/z;

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    goto :goto_11

    :cond_36
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_37
    :goto_11
    move-wide v13, v4

    :goto_12
    monitor-exit v3

    cmp-long v3, v13, v4

    if-lez v3, :cond_30

    invoke-virtual {v1, v13, v14}, Lec/y;->a(J)V

    goto :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_38
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_39
    :goto_13
    if-eqz v16, :cond_3a

    sget-object v1, Lac/c;->b:Lokhttp3/s;

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lec/z;->i(Lokhttp3/s;Z)V

    :cond_3a
    :goto_14
    iget-object v0, v0, Lec/w;->c:Lkc/g;

    int-to-long v1, v8

    invoke-interface {v0, v1, v2}, Lkc/g;->skip(J)V

    goto :goto_15

    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_15
    const/4 v15, 0x1

    :cond_3d
    :goto_16
    return v15

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FRAME_SIZE_ERROR: "

    invoke-static {v1, v3}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lec/o;)V
    .locals 4

    const-string v0, "handler"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/w;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lec/w;->a(ZLec/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Required SETTINGS preface not received"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Lec/f;->a:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v2, v0

    iget-object p0, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p0, v2, v3}, Lkc/g;->n(J)Lokio/ByteString;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v2, Lec/w;->e:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<< CONNECTION "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a connection header but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public final d(Lec/o;II)V
    .locals 8

    const/16 v0, 0x8

    if-lt p2, v0, :cond_a

    if-nez p3, :cond_9

    iget-object p3, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p3}, Lkc/g;->readInt()I

    move-result p3

    iget-object v1, p0, Lec/w;->c:Lkc/g;

    invoke-interface {v1}, Lkc/g;->readInt()I

    move-result v1

    sub-int/2addr p2, v0

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->Companion:Lec/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v7

    if-ne v7, v1, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_3

    iget-object p0, p0, Lec/w;->c:Lkc/g;

    int-to-long v0, p2

    invoke-interface {p0, v0, v1}, Lkc/g;->n(J)Lokio/ByteString;

    move-result-object v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "debugData"

    invoke-static {v0, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    iget-object p0, p1, Lec/o;->b:Lec/t;

    monitor-enter p0

    :try_start_0
    iget-object p2, p1, Lec/o;->b:Lec/t;

    iget-object p2, p2, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    new-array v0, v3, [Lec/z;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, [Lec/z;

    iget-object v0, p1, Lec/o;->b:Lec/t;

    iput-boolean v5, v0, Lec/t;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    array-length p0, p2

    :goto_3
    if-ge v3, p0, :cond_6

    aget-object v0, p2, v3

    iget v1, v0, Lec/z;->m:I

    if-le v1, p3, :cond_5

    invoke-virtual {v0}, Lec/z;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    monitor-enter v0

    :try_start_1
    const-string v2, "errorCode"

    invoke-static {v1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_4

    iput-object v1, v0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    iget-object v1, p1, Lec/o;->b:Lec/t;

    iget v0, v0, Lec/z;->m:I

    invoke-virtual {v1, v0}, Lec/t;->i(I)Lec/z;

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    :try_start_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_GOAWAY unexpected error code: "

    invoke-static {p1, v1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_GOAWAY length < 8: "

    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(IIII)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lec/w;->a:Lec/v;

    iput p1, v0, Lec/v;->d:I

    iput p1, v0, Lec/v;->a:I

    iput p2, v0, Lec/v;->e:I

    iput p3, v0, Lec/v;->b:I

    iput p4, v0, Lec/v;->c:I

    :cond_0
    :goto_0
    iget-object p1, p0, Lec/w;->b:Lec/c;

    iget-object p2, p1, Lec/c;->b:Lkc/o;

    invoke-virtual {p2}, Lkc/o;->G()Z

    move-result p3

    iget-object p4, p1, Lec/c;->a:Ljava/util/ArrayList;

    if-nez p3, :cond_e

    invoke-virtual {p2}, Lkc/o;->readByte()B

    move-result p2

    sget-object p3, Lac/c;->a:[B

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_d

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne v0, p3, :cond_5

    const/16 p3, 0x7f

    invoke-virtual {p1, p2, p3}, Lec/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x1

    if-ltz p2, :cond_1

    sget-object v0, Lec/e;->a:[Lec/b;

    array-length v0, v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    move v2, p3

    :cond_1
    if-eqz v2, :cond_2

    sget-object p1, Lec/e;->a:[Lec/b;

    aget-object p1, p1, p2

    goto :goto_1

    :cond_2
    sget-object v0, Lec/e;->a:[Lec/b;

    array-length v0, v0

    sub-int v0, p2, v0

    iget v2, p1, Lec/c;->d:I

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    if-ltz v2, :cond_4

    iget-object p1, p1, Lec/c;->c:[Lec/b;

    array-length v0, p1

    if-ge v2, v0, :cond_4

    aget-object p1, p1, v2

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Header index too large "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 p3, 0x40

    if-ne p2, p3, :cond_6

    sget-object p2, Lec/e;->a:[Lec/b;

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lec/e;->a(Lokio/ByteString;)V

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lec/b;

    invoke-direct {p4, p2, p3}, Lec/b;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p4}, Lec/c;->c(Lec/b;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p3, :cond_7

    const/16 p3, 0x3f

    invoke-virtual {p1, p2, p3}, Lec/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lec/c;->b(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lec/b;

    invoke-direct {p4, p2, p3}, Lec/b;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p4}, Lec/c;->c(Lec/b;)V

    goto/16 :goto_0

    :cond_7
    and-int/lit8 p3, p2, 0x20

    const/16 v0, 0x20

    if-ne p3, v0, :cond_a

    const/16 p3, 0x1f

    invoke-virtual {p1, p2, p3}, Lec/c;->e(II)I

    move-result p2

    iput p2, p1, Lec/c;->h:I

    if-ltz p2, :cond_9

    iget p3, p1, Lec/c;->g:I

    if-gt p2, p3, :cond_9

    iget p3, p1, Lec/c;->f:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_8

    iget-object p2, p1, Lec/c;->c:[Lec/b;

    invoke-static {p2, v1}, Lkotlin/collections/l;->j0([Ljava/lang/Object;Lkotlinx/coroutines/internal/z;)V

    iget-object p2, p1, Lec/c;->c:[Lec/b;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lec/c;->d:I

    iput v2, p1, Lec/c;->e:I

    iput v2, p1, Lec/c;->f:I

    goto/16 :goto_0

    :cond_8
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lec/c;->a(I)I

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid dynamic table size update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lec/c;->h:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const/16 p3, 0x10

    if-eq p2, p3, :cond_c

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Lec/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lec/c;->b(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p1

    new-instance p3, Lec/b;

    invoke-direct {p3, p2, p1}, Lec/b;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    :goto_2
    sget-object p2, Lec/e;->a:[Lec/b;

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lec/e;->a(Lokio/ByteString;)V

    invoke-virtual {p1}, Lec/c;->d()Lokio/ByteString;

    move-result-object p1

    new-instance p3, Lec/b;

    invoke-direct {p3, p2, p1}, Lec/b;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "index == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {p4}, Lkotlin/collections/r;->Y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public final t(Lec/o;III)V
    .locals 2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    if-nez p4, :cond_5

    iget-object p2, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p2}, Lkc/g;->readInt()I

    move-result p2

    iget-object p0, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p0}, Lkc/g;->readInt()I

    move-result p0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    iget-object p0, p1, Lec/o;->b:Lec/t;

    monitor-enter p0

    const-wide/16 v0, 0x1

    if-eq p2, p4, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p1, Lec/o;->b:Lec/t;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lec/o;->b:Lec/t;

    iget-wide p2, p1, Lec/t;->q:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lec/t;->q:J

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lec/o;->b:Lec/t;

    iget-wide p2, p1, Lec/t;->n:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lec/t;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    iget-object p3, p1, Lec/o;->b:Lec/t;

    iget-object p3, p3, Lec/t;->i:Lbc/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lec/o;->b:Lec/t;

    iget-object v0, v0, Lec/t;->d:Ljava/lang/String;

    const-string v1, " ping"

    invoke-static {p4, v0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lec/m;

    invoke-direct {v0, p4, p1, p2, p0}, Lec/m;-><init>(Ljava/lang/String;Lec/o;II)V

    const-wide/16 p0, 0x0

    invoke-virtual {p3, v0, p0, p1}, Lbc/c;->c(Lbc/a;J)V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_PING streamId != 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_PING length != 8: "

    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(Lec/o;II)V
    .locals 4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lec/w;->c:Lkc/g;

    invoke-interface {p0}, Lkc/g;->readInt()I

    move-result p0

    sget-object p2, Lac/c;->a:[B

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    if-nez p3, :cond_0

    iget-object p0, p1, Lec/o;->b:Lec/t;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lec/o;->b:Lec/t;

    iget-wide p2, p1, Lec/t;->z:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lec/t;->z:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    iget-object p1, p1, Lec/o;->b:Lec/t;

    invoke-virtual {p1, p3}, Lec/t;->d(I)Lec/z;

    move-result-object p1

    if-eqz p1, :cond_2

    monitor-enter p1

    :try_start_1
    iget-wide p2, p1, Lec/z;->d:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lec/z;->d:J

    if-lez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move-object p0, p1

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "windowSizeIncrement was 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
