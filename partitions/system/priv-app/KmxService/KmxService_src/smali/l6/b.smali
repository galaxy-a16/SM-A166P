.class public final Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll6/l;

.field public final b:[Lv7/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll6/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll6/l;-><init>(I)V

    iput-object v0, p0, Ll6/b;->a:Ll6/l;

    invoke-static {}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->values()[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lv7/d;

    iput-object v0, p0, Ll6/b;->b:[Lv7/d;

    return-void
.end method

.method public static a(Ll6/g;Lv7/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast p1, Lv7/c;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lv7/c;->c:Ljava/lang/Object;

    check-cast v0, Ll6/a;

    invoke-virtual {p0, v0}, Ll6/g;->d(Ll6/a;)Lv7/c;

    iget-object p1, p1, Ld/g0;->b:Ljava/lang/Object;

    check-cast p1, Ld/g0;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ll7/b;ILv7/t;)V
    .locals 11

    iget-object p1, p1, Ll7/b;->c:Lv7/t;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v1, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    invoke-interface {p1, v1}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll7/c;

    iget-object v4, v4, Ll7/c;->c:Lf6/c;

    if-nez v0, :cond_2

    invoke-interface {p3, v1}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {v5}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v2

    :goto_3
    iget-object v6, p0, Ll6/b;->a:Ll6/l;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lf6/e;->h(Lf6/c;)Lf6/e;

    move-result-object v7

    iget-object v8, v6, Ll6/l;->a:Ljava/lang/Object;

    check-cast v8, Ll6/k;

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lf6/e;->f()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v7}, Ll6/k;->i(Lf6/e;)Ll6/k;

    move-result-object v8

    goto :goto_4

    :cond_3
    iget-object v9, v7, Lu7/a;->a:[B

    array-length v9, v9

    iget v10, v7, Lf6/e;->e:I

    if-eq v10, v9, :cond_4

    move v9, v2

    goto :goto_5

    :cond_4
    move v9, v3

    :goto_5
    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget-object v9, v8, Ll6/k;->f:Lv7/w;

    invoke-static {v9, v4, p2, v5}, Ll6/k;->h(Lv7/w;Lf6/c;IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-object v10, v8, Ll6/k;->f:Lv7/w;

    goto :goto_6

    :cond_5
    iget-object v9, v8, Ll6/k;->e:Lv7/w;

    invoke-static {v9, v4, p2, v5}, Ll6/k;->h(Lv7/w;Lf6/c;IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-object v10, v8, Ll6/k;->e:Lv7/w;

    :cond_6
    :goto_6
    invoke-virtual {v8}, Ll6/k;->b()V

    move-object v8, v10

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ll6/l;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method
