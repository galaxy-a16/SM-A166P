.class public abstract Lpa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FABRIC-MESSENGER"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final myMemberId:Ljava/lang/String;

.field private final stampedLock:Ljava/util/concurrent/locks/StampedLock;

.field private final subscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpa/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    iput-object v0, p0, Lpa/c;->stampedLock:Ljava/util/concurrent/locks/StampedLock;

    iput-object p1, p0, Lpa/c;->myMemberId:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newWorkStealingPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lpa/c;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lpa/c;Lpa/e;Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;J)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->getData()Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lpa/e;->a(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lpa/c;->stampedLock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, p4, p5}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lpa/c;->stampedLock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, p4, p5}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    throw p1
.end method

.method public static b(I)[B
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispatch([B)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v1, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpa/e;

    :try_start_0
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    move-result-object v5

    invoke-interface {v3}, Lpa/e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->getSender()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lpa/c;->stampedLock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lpa/c;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lpa/b;

    move-object v1, v0

    move-object v2, p0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lpa/b;-><init>(Lpa/c;Lpa/e;Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;J)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Lpa/c;->stampedLock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    throw p1

    :cond_0
    iget-object p0, p0, Lpa/c;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/samsung/android/kmxservice/escrowvault/ui/g;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v3, v5}, Lcom/samsung/android/kmxservice/escrowvault/ui/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "FABRIC-MESSENGER"

    const-string v0, "Failed to dispatch."

    invoke-static {p1, v0, p0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final publish(ILcom/google/protobuf/ByteString;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object v0

    iget-object v1, p0, Lpa/c;->myMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->setSender(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    move-result-object p2

    .line 1
    invoke-static {p1}, Lpa/c;->b(I)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p2

    array-length v0, p2

    invoke-static {v0}, Lpa/c;->b(I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2
    invoke-virtual {p0, p1}, Lpa/c;->publish([B)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "FABRIC-MESSENGER"

    const-string p2, "Failed to publish."

    .line 4
    invoke-static {p1, p2, p0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final publish(Ljava/lang/String;ILcom/google/protobuf/ByteString;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object v0

    iget-object v1, p0, Lpa/c;->myMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->setSender(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    move-result-object p3

    .line 5
    invoke-static {p2}, Lpa/c;->b(I)[B

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    invoke-static {v0}, Lpa/c;->b(I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lpa/c;->publish(Ljava/lang/String;[B)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "FABRIC-MESSENGER"

    const-string p2, "Failed to publish."

    .line 8
    invoke-static {p1, p2, p0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public abstract publish(Ljava/lang/String;[B)Z
.end method

.method public abstract publish([B)Z
.end method

.method public final subscribe(Lpa/e;)V
    .locals 1

    iget-object p0, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    invoke-interface {p1}, Lpa/e;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unsubscribe(I)V
    .locals 0

    iget-object p0, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unsubscribeAll()V
    .locals 0

    iget-object p0, p0, Lpa/c;->subscriberMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
