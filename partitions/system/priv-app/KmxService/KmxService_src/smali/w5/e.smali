.class public final Lw5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg8/b;


# instance fields
.field public final a:Lw5/o;


# direct methods
.method public constructor <init>(Lw5/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/e;->a:Lw5/o;

    return-void
.end method


# virtual methods
.method public final b()Lg8/a;
    .locals 1

    iget-object p0, p0, Lw5/e;->a:Lw5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lw5/c;

    invoke-direct {v0, p0}, Lw5/c;-><init>(Lw5/o;)V

    return-object v0
.end method

.method public final c()Lw5/h;
    .locals 0

    iget-object p0, p0, Lw5/e;->a:Lw5/o;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    return-object p0
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lb7/a;->g:Lb7/a;

    const-class v1, Lb7/a;

    const-string v2, "Disconnect"

    invoke-static {v0, v1, v2}, Lp9/d;->Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lw5/e;->a:Lw5/o;

    new-instance v1, Lj6/a;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    invoke-direct {v1, p0, v0}, Lj6/a;-><init>(Lw5/h;Lb7/a;)V

    new-instance p0, Lio/reactivex/internal/observers/a;

    invoke-direct {p0}, Lio/reactivex/internal/observers/a;-><init>()V

    invoke-virtual {v1, p0}, Leb/a;->a(Leb/b;)V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/a;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final e(Lo7/b;)Lv8/a;
    .locals 2

    const-class v0, Lo7/b;

    const-string v1, "Unsubscribe"

    invoke-static {p1, v0, v1}, Lp9/d;->Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lw5/e;->c()Lw5/h;

    move-result-object v0

    invoke-virtual {v0}, Lw5/h;->b()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lw5/e;->a:Lw5/o;

    new-instance v0, Lo6/f;

    iget-object p0, p0, Lw5/o;->a:Lw5/h;

    invoke-direct {v0, p1, p0}, Lo6/f;-><init>(Lo7/b;Lw5/h;)V

    new-instance p0, Lio/reactivex/internal/observers/a;

    invoke-direct {p0}, Lio/reactivex/internal/observers/a;-><init>()V

    invoke-virtual {v0, p0}, Leb/t;->a(Leb/u;)V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv8/a;

    move-object p1, p0

    check-cast p1, Lp7/a;

    iget-object p1, p1, Lu6/f;->e:Lv7/t;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lv7/t;->listIterator(I)Lv7/s;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/b;

    invoke-interface {v0}, Lh8/b;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;

    const-string v0, "UNSUBACK contains at least one error code."

    invoke-direct {p1, p0, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;-><init>(Lv8/a;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0

    :cond_2
    invoke-static {}, Lv9/a;->E()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
