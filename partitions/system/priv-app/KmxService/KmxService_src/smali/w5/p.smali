.class public final Lw5/p;
.super Lw5/q;
.source "SourceFile"

# interfaces
.implements Lg8/d;


# instance fields
.field public final i:Lx5/a;

.field public j:Lv6/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw5/q;-><init>()V

    sget-object v0, Lx5/a;->a:Lx5/a;

    iput-object v0, p0, Lw5/p;->i:Lx5/a;

    return-void
.end method


# virtual methods
.method public final a()Lw5/o;
    .locals 13

    new-instance v0, Lw5/o;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    iget-object v6, p0, Lw5/p;->i:Lx5/a;

    iget-object v1, p0, Lw5/p;->j:Lv6/c;

    if-nez v1, :cond_0

    sget-object v1, Lw5/g;->b:Lw5/g;

    move-object v7, v1

    goto :goto_0

    :cond_0
    new-instance v3, Lw5/g;

    invoke-direct {v3, v1}, Lw5/g;-><init>(Lv6/c;)V

    move-object v7, v3

    :goto_0
    new-instance v10, Lw5/h;

    iget-object v3, p0, Lw5/q;->d:Lf6/a;

    iget-object v1, p0, Lw5/q;->e:Lw5/m;

    if-nez v1, :cond_7

    new-instance v1, Lw5/m;

    iget-object v4, p0, Lw5/n;->a:Ljava/lang/Object;

    instance-of v5, v4, Ljava/net/InetAddress;

    const/16 v8, 0x75b

    const/16 v9, 0x22b3

    const/4 v11, -0x1

    if-eqz v5, :cond_3

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lw5/n;->a:Ljava/lang/Object;

    check-cast v5, Ljava/net/InetAddress;

    iget v12, p0, Lw5/n;->b:I

    if-eq v12, v11, :cond_1

    move v8, v12

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lw5/n;->c:Lw5/k;

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    invoke-direct {v4, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_3

    :cond_3
    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lw5/n;->b:I

    if-eq v5, v11, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lw5/n;->c:Lw5/k;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move v8, v9

    :goto_2
    invoke-static {v4}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_6

    :try_start_0
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v9, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v9

    goto :goto_3

    :catch_0
    :cond_6
    invoke-static {v4, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    :goto_3
    iget-object v5, p0, Lw5/n;->c:Lw5/k;

    invoke-direct {v1, v4, v5}, Lw5/m;-><init>(Ljava/net/InetSocketAddress;Lw5/k;)V

    :cond_7
    move-object v4, v1

    iget-object v5, p0, Lw5/q;->f:Lw5/j;

    iget-object v1, p0, Lw5/q;->g:Lv7/r;

    sget-object v8, Lv7/m;->a:Lv7/m;

    if-nez v1, :cond_8

    move-object v9, v8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lv7/r;->b()Lv7/t;

    move-result-object v1

    move-object v9, v1

    :goto_4
    iget-object p0, p0, Lw5/q;->h:Lv7/r;

    if-nez p0, :cond_9

    move-object p0, v8

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lv7/r;->b()Lv7/t;

    move-result-object p0

    :goto_5
    move-object v1, v10

    move-object v8, v9

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lw5/h;-><init>(Lcom/hivemq/client/mqtt/MqttVersion;Lf6/a;Lw5/m;Lw5/j;Lx5/a;Lw5/g;Lv7/t;Lv7/t;)V

    invoke-direct {v0, v10}, Lw5/o;-><init>(Lw5/h;)V

    return-object v0
.end method
