.class public abstract Lj3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/s;


# static fields
.field public static volatile a:Ljava/lang/ClassLoader; = null

.field public static volatile b:Ljava/lang/Thread; = null

.field public static final c:Lcom/google/gson/internal/e;

.field public static final d:Lcom/google/gson/internal/e;

.field public static final e:Lcom/google/gson/internal/c;

.field public static f:Z = false

.field public static g:Z = false

.field public static h:Z = false

.field public static i:I

.field public static j:Ljava/io/File;

.field public static k:Ljava/io/FileOutputStream;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static final synthetic n:I

.field public static final p:Lcom/google/gson/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lj3/f;->c:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lj3/f;->d:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lj3/f;->e:Lcom/google/gson/internal/c;

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    sput-object v0, Lj3/f;->p:Lcom/google/gson/internal/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A()Ljava/lang/ClassLoader;
    .locals 2

    const-class v0, Lj3/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj3/f;->a:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    invoke-static {}, Lj3/f;->B()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lj3/f;->a:Ljava/lang/ClassLoader;

    :cond_0
    sget-object v1, Lj3/f;->a:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized B()Ljava/lang/ClassLoader;
    .locals 6

    const-string v0, "Failed to get thread context classloader "

    const-class v1, Lj3/f;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lj3/f;->b:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lj3/f;->C()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lj3/f;->b:Ljava/lang/Thread;

    sget-object v2, Lj3/f;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v3

    :cond_1
    :goto_0
    :try_start_1
    sget-object v2, Lj3/f;->b:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v4, Lj3/f;->b:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DynamiteLoaderV2CL"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v3

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized C()Ljava/lang/Thread;
    .locals 12

    const-class v0, Lj3/f;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    const-class v3, Ljava/lang/Void;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    new-array v5, v4, [Ljava/lang/ThreadGroup;

    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v5, v7

    const-string v9, "dynamiteLoader"

    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_1
    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/ThreadGroup;

    const-string v4, "dynamiteLoader"

    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Thread;

    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_2
    if-ge v6, v1, :cond_5

    aget-object v5, v4, v6

    const-string v7, "GmsDynamite"

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_3
    if-nez v5, :cond_6

    :try_start_3
    new-instance v1, Lj3/e;

    invoke-direct {v1, v8}, Lj3/e;-><init>(Ljava/lang/ThreadGroup;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to enumerate thread/threadgroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DynamiteLoaderV2CL"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v5, v1

    :cond_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v5

    :goto_6
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lj3/f;->g:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-static {v1, p0, p1}, Lj3/f;->o(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11

    or-int v0, p1, p2

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_10

    add-int v0, p1, p2

    new-array p2, p2, [C

    move v3, v1

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-ltz v4, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    aput-char v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_2
    :goto_2
    move v8, v3

    :cond_3
    :goto_3
    if-ge p1, v0, :cond_f

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-eqz v4, :cond_7

    add-int/lit8 v4, v8, 0x1

    int-to-char p1, p1

    aput-char p1, p2, v8

    move p1, v3

    :goto_5
    move v8, v4

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-ltz v3, :cond_5

    move v4, v2

    goto :goto_6

    :cond_5
    move v4, v1

    :goto_6
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v8, 0x1

    int-to-char v3, v3

    aput-char v3, p2, v8

    goto :goto_5

    :cond_7
    const/16 v4, -0x20

    if-ge p1, v4, :cond_8

    move v4, v2

    goto :goto_7

    :cond_8
    move v4, v1

    :goto_7
    if-eqz v4, :cond_a

    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p1, v3, p2, v8}, Li4/g;->d(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    const/16 v4, -0x10

    if-ge p1, v4, :cond_b

    move v4, v2

    goto :goto_8

    :cond_b
    move v4, v1

    :goto_8
    if-eqz v4, :cond_d

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p1, v3, v4, p2, v8}, Li4/g;->e(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_d
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_e

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Li4/g;->c(BBBB[CI)V

    add-int/lit8 v8, v10, 0x1

    move p1, v9

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v3, "last_ack_complete_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v3}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v2

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "f"

    const-string v2, "device time is changed. update last ack complete time"

    invoke-static {v0, v2}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter v0

    :try_start_1
    const-string v6, "last_ack_complete_time"

    invoke-virtual {v0, v6, v2, v3}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_1
    new-instance v0, Lp9/c;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    const-string v3, "last_ack_complete_time"

    invoke-virtual {v2, v4, v5, v3}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    monitor-enter v2

    :try_start_3
    const-string v5, "ackPeriod"

    const-wide/16 v6, 0x168

    invoke-virtual {v2, v6, v7, v5}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    sget-wide v7, Lb9/a;->b:J

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lv4/b;->A(Landroid/content/Context;Lp9/c;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lv4/b;->D(Landroid/content/Context;Lp9/c;)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v0, v5, v6, v1}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lj3/f;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1, p0, p1}, Lj3/f;->o(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM/dd/yy HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/16 p0, 0x56

    goto :goto_0

    :cond_0
    const/16 p0, 0x48

    goto :goto_0

    :cond_1
    const/16 p0, 0x44

    goto :goto_0

    :cond_2
    const/16 p0, 0x49

    goto :goto_0

    :cond_3
    const/16 p0, 0x57

    goto :goto_0

    :cond_4
    const/16 p0, 0x45

    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object p1, Lj3/f;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object p1, Lj3/f;->j:Ljava/io/File;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_6
    const-string p1, "Smp log file is created at "

    :try_start_0
    sget-object v0, Lj3/f;->k:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    sput-object p2, Lj3/f;->k:Ljava/io/FileOutputStream;

    :cond_7
    new-instance v0, Ljava/io/File;

    sget-object v2, Lj3/f;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lj3/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj3/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lj3/f;->j:Ljava/io/File;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lj3/f;->j:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lj3/f;->k:Ljava/io/FileOutputStream;

    const-string v2, "SmpLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    :try_start_1
    sget-object p1, Lj3/f;->k:Ljava/io/FileOutputStream;

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object p0, Lj3/f;->k:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    sget-object p0, Lj3/f;->j:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v0, 0x500000

    cmp-long p0, p0, v0

    if-lez p0, :cond_a

    sget-object p0, Lj3/f;->k:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    sput-object p2, Lj3/f;->k:Ljava/io/FileOutputStream;

    invoke-static {}, Lj3/f;->s()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2
    sget-object p0, Lj3/f;->k:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    sput-object p2, Lj3/f;->j:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    sget-object v0, Lj3/f;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".txt"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Smplog_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lj3/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget v2, Lj3/f;->i:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Smplog"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/ppmt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SMP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmpLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SMP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmpLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lj3/f;->g:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-static {v1, p0, p1}, Lj3/f;->o(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lj3/f;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    return v0
.end method

.method public static o(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const-string p2, "SmpLog"

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static r(IIILjava/nio/ByteBuffer;)I
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, -0x13

    const/16 v5, -0x3e

    const/16 v6, -0x10

    const/4 v7, 0x0

    const/16 v8, -0x60

    const/16 v9, -0x20

    const/4 v10, -0x1

    const/16 v11, -0x41

    if-eqz v0, :cond_f

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    int-to-byte v12, v0

    if-ge v12, v9, :cond_3

    if-lt v12, v5, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-le v1, v11, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v10

    :cond_3
    if-ge v12, v6, :cond_9

    shr-int/lit8 v0, v0, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt v0, v2, :cond_5

    invoke-static {v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    return v0

    :cond_4
    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :cond_5
    if-gt v1, v11, :cond_8

    if-ne v12, v9, :cond_6

    if-lt v1, v8, :cond_8

    :cond_6
    if-ne v12, v4, :cond_7

    if-ge v1, v8, :cond_8

    :cond_7
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_f

    :cond_8
    return v10

    :cond_9
    shr-int/lit8 v13, v0, 0x8

    not-int v13, v13

    int-to-byte v13, v13

    if-nez v13, :cond_b

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    if-lt v0, v2, :cond_a

    invoke-static {v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    return v0

    :cond_a
    move v1, v7

    goto :goto_1

    :cond_b
    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :goto_1
    if-nez v1, :cond_d

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-lt v1, v2, :cond_c

    invoke-static {v12, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    return v0

    :cond_c
    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :cond_d
    if-gt v13, v11, :cond_e

    shl-int/lit8 v12, v12, 0x1c

    add-int/lit8 v13, v13, 0x70

    add-int/2addr v13, v12

    shr-int/lit8 v12, v13, 0x1e

    if-nez v12, :cond_e

    if-gt v1, v11, :cond_e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_f

    :cond_e
    return v10

    :cond_f
    :goto_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    add-int/lit8 v0, v2, -0x7

    move v12, v1

    :goto_3
    if-ge v12, v0, :cond_10

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_10

    add-int/lit8 v12, v12, 0x8

    goto :goto_3

    :cond_10
    sub-int/2addr v12, v1

    add-int/2addr v12, v1

    :cond_11
    :goto_4
    if-lt v12, v2, :cond_12

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_21

    if-ge v1, v9, :cond_16

    if-lt v0, v2, :cond_14

    :cond_13
    move v7, v1

    goto/16 :goto_8

    :cond_14
    if-lt v1, v5, :cond_20

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-le v1, v11, :cond_15

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_16
    if-ge v1, v6, :cond_1b

    add-int/lit8 v12, v2, -0x1

    if-lt v0, v12, :cond_17

    goto :goto_5

    :cond_17
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v11, :cond_20

    if-ne v1, v9, :cond_18

    if-lt v0, v8, :cond_20

    :cond_18
    if-ne v1, v4, :cond_19

    if-ge v0, v8, :cond_20

    :cond_19
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_1a

    goto :goto_7

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_1b
    add-int/lit8 v12, v2, -0x2

    if-lt v0, v12, :cond_1f

    :goto_5
    sub-int/2addr v2, v0

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto :goto_6

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    :goto_6
    move v7, v0

    goto :goto_8

    :cond_1e
    const/16 v0, -0xc

    if-le v1, v0, :cond_13

    goto :goto_7

    :cond_1f
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v11, :cond_20

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_20

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v11, :cond_20

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_11

    :cond_20
    :goto_7
    move v7, v10

    :goto_8
    return v7

    :cond_21
    :goto_9
    move v12, v0

    goto/16 :goto_4
.end method

.method public static s()V
    .locals 6

    sget-object v0, Lj3/f;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget v3, Lj3/f;->i:I

    add-int/2addr v3, v2

    sput v3, Lj3/f;->i:I

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lj3/f;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj3/f;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {v4, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v4, Lj3/f;->k:Ljava/io/FileOutputStream;

    sput-object v3, Lj3/f;->j:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static t(ILandroid/widget/Button;Z)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/TextView;

    const-string v5, "hidden_semSetButtonShapeEnabled"

    invoke-static {v2, v5, v1}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {p1, v1, v0}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static u(Landroid/widget/TextView;Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/TextView;

    const-string v4, "hidden_semSetButtonShapeEnabled"

    invoke-static {v2, v4, v1}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p0, v1, v0}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    const-string p0, "f"

    const-string v0, "sendAck fail. context null"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "f"

    const-string v0, "sendAck fail. dbHandler null"

    :goto_0
    invoke-static {p0, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lc9/b;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lf9/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "f"

    const-string v2, "sendAck fail. appId is empty"

    invoke-static {p0, v2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc9/b;->h(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_3
    :try_start_2
    new-instance v3, Ln9/a;

    invoke-direct {v3, p0, v2, v1}, Ln9/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v2, 0x3c

    invoke-static {p0, v3, v2}, Lcom/samsung/android/sdk/smp/common/network/d;->i(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/d;I)Lb0/a;

    move-result-object v2

    iget-boolean v3, v2, Lb0/a;->a:Z

    if-eqz v3, :cond_4

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v4, "last_ack_complete_time"

    invoke-virtual {p0, v4, v2, v3}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    invoke-virtual {v0, v1}, Lc9/b;->h(Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0

    throw v1

    :cond_4
    iget v2, v2, Lb0/a;->b:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_5

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v1}, Lc9/b;->h(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :cond_5
    :try_start_6
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Lc9/b;->v()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lp1/c;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v1, v3}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "incrementAckFailCount. "

    invoke-virtual {v0, v2, v1}, Lc9/b;->P(Lc9/a;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0

    invoke-virtual {v0}, Lc9/b;->u()V

    invoke-virtual {v0}, Lc9/b;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_retry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lp9/c;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v2, v4, v1}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lb9/a;->g:J

    add-long/2addr v4, v6

    invoke-static {p0, v2, v4, v5, v3}, Lv4/b;->V(Landroid/content/Context;Lp9/c;JI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_9
    monitor-exit v0

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0
.end method

.method public static w(Landroid/content/Context;ZZ)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SmpLog"

    const-string p1, "Fail to set log. context null"

    invoke-static {p0, p1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj3/f;->m:Ljava/lang/String;

    sput-boolean p1, Lj3/f;->f:Z

    sget-boolean v0, Lj3/f;->g:Z

    or-int/2addr p1, v0

    sput-boolean p1, Lj3/f;->g:Z

    sput-boolean p2, Lj3/f;->h:Z

    if-eqz p2, :cond_1

    invoke-static {p0}, Lj3/f;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lj3/f;->l:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lj3/f;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lj3/f;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lj3/f;->m:Ljava/lang/String;

    const-string v1, "com.samsung.android.test.smp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lj3/f;->o(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lj3/f;->g:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1, p0, p1}, Lj3/f;->o(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lj3/f;->h:Z

    if-eqz v0, :cond_1

    invoke-static {v1, p0, p1}, Lj3/f;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public p(IIILjava/nio/ByteBuffer;)I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/2addr v2, v3

    add-int v3, v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lj3/f;->q(III[B)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_25

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/e0;

    iget v0, v0, Lcom/google/crypto/tink/shaded/protobuf/e0;->q:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static/range {p1 .. p4}, Lj3/f;->r(IIILjava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_a

    :goto_0
    or-int v0, v2, p3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v0, v3

    const/4 v5, 0x2

    if-ltz v0, :cond_24

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    sget-wide v7, Lcom/google/crypto/tink/shaded/protobuf/d0;->h:J

    move-object/from16 v9, p4

    invoke-virtual {v0, v9, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/c0;->h(Ljava/lang/Object;J)J

    move-result-wide v7

    int-to-long v9, v2

    add-long/2addr v7, v9

    sub-int v0, p3, v2

    int-to-long v9, v0

    add-long/2addr v9, v7

    const-wide/16 v11, 0x1

    const/16 v2, -0x13

    const/16 v13, -0x3e

    const/16 v14, -0x10

    const/16 v15, -0x60

    const/16 v0, -0x20

    const/16 v6, -0x41

    if-eqz v1, :cond_e

    cmp-long v16, v7, v9

    if-ltz v16, :cond_1

    move v0, v1

    goto/16 :goto_a

    :cond_1
    int-to-byte v3, v1

    if-ge v3, v0, :cond_3

    if-lt v3, v13, :cond_23

    add-long v17, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-le v1, v6, :cond_2

    goto/16 :goto_9

    :cond_2
    move-wide/from16 v7, v17

    goto/16 :goto_2

    :cond_3
    if-ge v3, v14, :cond_8

    shr-int/lit8 v1, v1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_5

    add-long v17, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    cmp-long v7, v17, v9

    if-ltz v7, :cond_4

    invoke-static {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_a

    :cond_4
    move-wide/from16 v7, v17

    :cond_5
    if-gt v1, v6, :cond_23

    if-ne v3, v0, :cond_6

    if-lt v1, v15, :cond_23

    :cond_6
    if-ne v3, v2, :cond_7

    if-ge v1, v15, :cond_23

    :cond_7
    add-long v17, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-le v1, v6, :cond_2

    goto/16 :goto_9

    :cond_8
    shr-int/lit8 v4, v1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_a

    add-long v18, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v4

    cmp-long v1, v18, v9

    if-ltz v1, :cond_9

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_a

    :cond_9
    move-wide/from16 v7, v18

    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    :goto_1
    if-nez v1, :cond_c

    add-long v18, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    cmp-long v7, v18, v9

    if-ltz v7, :cond_b

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto/16 :goto_a

    :cond_b
    move-wide/from16 v7, v18

    :cond_c
    if-gt v4, v6, :cond_23

    shl-int/lit8 v3, v3, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, v3

    shr-int/lit8 v3, v4, 0x1e

    if-nez v3, :cond_23

    if-gt v1, v6, :cond_23

    add-long v3, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-le v1, v6, :cond_d

    goto/16 :goto_9

    :cond_d
    move-wide v7, v3

    :cond_e
    :goto_2
    sub-long/2addr v9, v7

    long-to-int v1, v9

    const/16 v3, 0x10

    if-ge v1, v3, :cond_f

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    long-to-int v3, v7

    and-int/lit8 v3, v3, 0x7

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    move v9, v3

    move-wide/from16 v18, v7

    :goto_3
    if-lez v9, :cond_11

    add-long v20, v18, v11

    invoke-static/range {v18 .. v19}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v10

    if-gez v10, :cond_10

    sub-int/2addr v3, v9

    goto :goto_5

    :cond_10
    add-int/lit8 v9, v9, -0x1

    move-wide/from16 v18, v20

    goto :goto_3

    :cond_11
    sub-int v3, v1, v3

    move-wide/from16 v9, v18

    :goto_4
    if-lt v3, v4, :cond_12

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {v4, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/c0;->g(J)J

    move-result-wide v18

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v4, v18, v20

    if-nez v4, :cond_12

    const-wide/16 v18, 0x8

    add-long v9, v9, v18

    add-int/lit8 v3, v3, -0x8

    const/16 v4, 0x8

    goto :goto_4

    :cond_12
    sub-int v3, v1, v3

    :goto_5
    int-to-long v9, v3

    add-long/2addr v7, v9

    sub-int/2addr v1, v3

    :cond_13
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-lez v1, :cond_15

    add-long v3, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v7

    if-ltz v7, :cond_14

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v22, v3

    move v3, v7

    move-wide/from16 v7, v22

    goto :goto_7

    :cond_14
    move-wide/from16 v22, v3

    move v3, v7

    move-wide/from16 v7, v22

    :cond_15
    if-nez v1, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_16
    add-int/lit8 v1, v1, -0x1

    if-ge v3, v0, :cond_1a

    if-nez v1, :cond_18

    :cond_17
    move v0, v3

    goto/16 :goto_a

    :cond_18
    add-int/lit8 v1, v1, -0x1

    if-lt v3, v13, :cond_23

    add-long v3, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v7

    if-le v7, v6, :cond_19

    goto/16 :goto_9

    :cond_19
    move-wide v7, v3

    goto :goto_6

    :cond_1a
    if-ge v3, v14, :cond_1e

    if-ge v1, v5, :cond_1b

    goto :goto_8

    :cond_1b
    add-int/lit8 v1, v1, -0x2

    add-long v9, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v4

    if-gt v4, v6, :cond_23

    if-ne v3, v0, :cond_1c

    if-lt v4, v15, :cond_23

    :cond_1c
    if-ne v3, v2, :cond_1d

    if-ge v4, v15, :cond_23

    :cond_1d
    add-long v7, v9, v11

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v3

    if-le v3, v6, :cond_13

    goto :goto_9

    :cond_1e
    const/4 v4, 0x3

    if-ge v1, v4, :cond_22

    :goto_8
    if-eqz v1, :cond_21

    const/4 v0, 0x1

    if-eq v1, v0, :cond_20

    if-ne v1, v5, :cond_1f

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v0

    add-long/2addr v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto :goto_a

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v0

    invoke-static {v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto :goto_a

    :cond_21
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    const/16 v0, -0xc

    if-le v3, v0, :cond_17

    goto :goto_9

    :cond_22
    add-int/lit8 v1, v1, -0x3

    add-long v9, v7, v11

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v4

    if-gt v4, v6, :cond_23

    shl-int/lit8 v3, v3, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, v3

    shr-int/lit8 v3, v4, 0x1e

    if-nez v3, :cond_23

    add-long v3, v9, v11

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v7

    if-gt v7, v6, :cond_23

    add-long v7, v3, v11

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v3

    if-le v3, v6, :cond_13

    :cond_23
    :goto_9
    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_24
    move-object/from16 v9, p4

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object/from16 v9, p4

    invoke-static/range {p1 .. p4}, Lj3/f;->r(IIILjava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract q(III[B)I
.end method
