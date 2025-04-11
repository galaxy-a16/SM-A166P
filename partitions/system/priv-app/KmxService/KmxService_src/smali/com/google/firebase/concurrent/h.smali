.class public final synthetic Lcom/google/firebase/concurrent/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/f;
.implements Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;
.implements Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;
.implements Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;
.implements Lcom/samsung/android/kmxservice/sdk/trustchain/util/KmxFaultBarrier$ThrowableSupplier;
.implements Lk/a;
.implements Lt2/i;
.implements Lo4/x;
.implements Lp5/e;
.implements La5/g;
.implements Lr3/b;
.implements Lgb/h;
.implements Lio/netty/channel/ChannelFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/concurrent/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lcom/google/firebase/concurrent/h;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    check-cast p1, Leb/e;

    sget-object p0, Lm6/a;->m:Lv5/a;

    return-object p1

    :sswitch_1
    check-cast p1, Lo5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/firebase/messaging/o;->a:Lp1/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lp1/v;->h(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :sswitch_2
    check-cast p1, Landroid/database/Cursor;

    sget-object p0, Lt2/k;->f:Ll2/c;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    move v0, v2

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :sswitch_3
    check-cast p1, Landroid/database/Cursor;

    sget-object p0, Lt2/k;->f:Ll2/c;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    return-object v1

    :sswitch_4
    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_5
    check-cast p1, Landroid/database/Cursor;

    sget-object p0, Lt2/k;->f:Ll2/c;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_6
    check-cast p1, Landroid/database/Cursor;

    sget-object p0, Lt2/k;->f:Ll2/c;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lo2/j;->a()Lp1/v;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp1/v;->n(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lw2/a;->b(I)Lcom/google/android/datatransport/Priority;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp1/v;->o(Lcom/google/android/datatransport/Priority;)V

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v1

    goto :goto_5

    :cond_4
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    :goto_5
    iput-object v4, v3, Lp1/v;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lp1/v;->g()Lo2/j;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object p0

    :sswitch_7
    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lt2/k;->f:Ll2/c;

    new-instance p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v0, "Timed out while trying to acquire the lock."

    invoke-direct {p0, v0, p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :sswitch_8
    check-cast p1, Landroid/database/Cursor;

    sget-object p0, Lt2/k;->f:Ll2/c;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    goto :goto_6

    :cond_6
    const-wide/16 p0, 0x0

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :sswitch_9
    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lt2/k;->f:Ll2/c;

    new-instance p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v0, "Timed out while trying to open db."

    invoke-direct {p0, v0, p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :sswitch_a
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object p0, Lt2/k;->f:Ll2/c;

    new-array p0, v2, [Ljava/lang/String;

    const-string v0, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/concurrent/h;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-static {p0, p1}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :goto_7
    check-cast p1, Lt8/a;

    new-instance p0, Ln7/b;

    check-cast p1, Lm7/a;

    invoke-direct {p0, p1}, Ln7/b;-><init>(Lm7/a;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x15 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Lr3/h;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/firebase/concurrent/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    const/16 p0, 0x193

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 0

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Ln2/l;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lcom/google/firebase/concurrent/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(Ln2/l;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Ln2/l;)Lk5/d;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(Ln2/l;)Ll2/d;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:La5/n;

    sget-object p0, Lcom/google/firebase/concurrent/UiExecutor;->INSTANCE:Lcom/google/firebase/concurrent/UiExecutor;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:La5/n;

    invoke-virtual {p0}, La5/n;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:La5/n;

    invoke-virtual {p0}, La5/n;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:La5/n;

    invoke-virtual {p0}, La5/n;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :goto_0
    new-instance p0, Lp5/b;

    const-class v0, Lp5/a;

    invoke-static {v0}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln2/l;->b(La5/r;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lp5/c;->c:Lp5/c;

    if-nez v0, :cond_1

    const-class v1, Lp5/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lp5/c;->c:Lp5/c;

    if-nez v0, :cond_0

    new-instance v0, Lp5/c;

    invoke-direct {v0}, Lp5/c;-><init>()V

    sput-object v0, Lp5/c;->c:Lp5/c;

    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lp5/b;-><init>(Ljava/util/Set;Lp5/c;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/firebase/concurrent/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFabricKeyId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public newChannel()Lio/netty/channel/Channel;
    .locals 0

    iget p0, p0, Lcom/google/firebase/concurrent/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>()V

    return-object p0

    :goto_0
    invoke-static {}, Lfc/e;->b()Lio/netty/channel/epoll/EpollSocketChannel;

    move-result-object p0

    check-cast p0, Lio/netty/channel/Channel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
