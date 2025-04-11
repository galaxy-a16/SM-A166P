.class public abstract Lp9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/HandlerThread;

.field public static b:Ld/j;

.field public static c:I

.field public static final d:Landroidx/constraintlayout/solver/widgets/analyzer/b;

.field public static final e:[[Ljava/lang/String;

.field public static final f:[[Ljava/lang/String;

.field public static final g:Lcom/google/gson/internal/e;

.field public static final h:Lcom/google/gson/internal/c;

.field public static final i:Lkotlinx/coroutines/internal/z;

.field public static final j:Lkotlinx/coroutines/internal/z;

.field public static final k:Lkotlinx/coroutines/internal/z;

.field public static final l:Lkotlinx/coroutines/sync/a;

.field public static final m:Lkotlinx/coroutines/sync/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    sput-object v0, Lp9/d;->d:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "body"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "web"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lp9/d;->e:[[Ljava/lang/String;

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "popupmain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    aput-object v1, v0, v6

    sput-object v0, Lp9/d;->f:[[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lp9/d;->g:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lp9/d;->h:Lcom/google/gson/internal/c;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "LOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp9/d;->i:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp9/d;->j:Lkotlinx/coroutines/internal/z;

    new-instance v1, Lkotlinx/coroutines/internal/z;

    const-string v2, "UNLOCKED"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v1, Lp9/d;->k:Lkotlinx/coroutines/internal/z;

    new-instance v2, Lkotlinx/coroutines/sync/a;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/sync/a;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lp9/d;->l:Lkotlinx/coroutines/sync/a;

    new-instance v0, Lkotlinx/coroutines/sync/a;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lp9/d;->m:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Lkotlinx/serialization/json/j;Lkotlinx/serialization/b;)Ljava/lang/Object;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lkotlinx/serialization/internal/b;

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lkotlinx/serialization/json/j;->r()Lkotlinx/serialization/json/b;

    move-result-object v1

    iget-object v1, v1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->i:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {p0}, Lkotlinx/serialization/json/j;->r()Lkotlinx/serialization/json/b;

    move-result-object v2

    invoke-static {v1, v2}, Lp9/d;->o(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lkotlinx/serialization/json/j;->v()Lkotlinx/serialization/json/l;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v3

    instance-of v4, v2, Lkotlinx/serialization/json/w;

    const/4 v5, -0x1

    if-eqz v4, :cond_6

    check-cast v2, Lkotlinx/serialization/json/w;

    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/l;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    instance-of v6, v3, Lkotlinx/serialization/json/a0;

    if-eqz v6, :cond_1

    move-object v4, v3

    check-cast v4, Lkotlinx/serialization/json/a0;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a JsonPrimitive"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p1, Lkotlinx/serialization/internal/b;

    invoke-virtual {p1, p0, v4}, Lkotlinx/serialization/internal/b;->a(Lzb/a;Ljava/lang/String;)Lkotlinx/serialization/b;

    move-result-object p1

    if-nez p1, :cond_5

    if-nez v4, :cond_4

    const-string p0, "missing class discriminator (\'null\')"

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "class discriminator \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "Polymorphic serializer was not found for "

    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lkotlinx/serialization/json/w;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-interface {p0}, Lkotlinx/serialization/json/j;->r()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discriminator"

    invoke-static {v1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/l;

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v3

    invoke-direct {v0, p0, v2, v1, v3}, Lkotlinx/serialization/json/internal/l;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    invoke-static {v0, p1}, Lp9/d;->A(Lkotlinx/serialization/json/j;Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlinx/serialization/json/w;

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_2
    invoke-interface {p1, p0}, Lkotlinx/serialization/b;->deserialize(Lzb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;
    .locals 0

    if-nez p0, :cond_1

    invoke-static {p2}, Lf6/j;->c(Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p2, "malformed UTF-8 string for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;
    .locals 2

    invoke-static {p1}, Lf6/j;->c(Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf6/j;->c(Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lf6/i;

    invoke-direct {v1, v0, p1}, Lf6/i;-><init>(Lf6/j;Lf6/j;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez p0, :cond_2

    invoke-static {}, Lv7/t;->builder()Lv7/r;

    move-result-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lv7/r;->a(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p1, "malformed user property"

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V
    .locals 8

    sget-object v0, Ll8/a;->a:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-wide/16 v3, -0x1

    sget-object v7, Lf6/h;->c:Lf6/h;

    const-string v0, "Reason Code"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    const-string v1, "Reason string"

    invoke-static {v0, v1}, Lf6/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lf6/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lf6/j;

    invoke-direct {v1, v0}, Lf6/j;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    :goto_0
    new-instance v0, Lb7/a;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lb7/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLf6/j;Lf6/j;Lf6/h;)V

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {p1, v0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Ll8/a;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, p2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Ll8/a;->a:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-wide/16 v3, -0x1

    sget-object v7, Lf6/h;->c:Lf6/h;

    const-string v0, "Reason Code"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Reason string"

    invoke-static {p2, v0}, Lf6/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lf6/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lf6/j;

    invoke-direct {v0, p2}, Lf6/j;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    new-instance v0, Lb7/a;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lb7/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLf6/j;Lf6/j;Lf6/h;)V

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {p1, v0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Ll8/a;Ljava/lang/String;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, p2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V
    .locals 10

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-boolean v2, p3, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/f;->isEmpty()Z

    move-result v3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lp9/d;->n(ZZLjb/m;Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-boolean v3, p3, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v9, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v9, v4

    :goto_1
    move v4, v9

    move-object v5, p1

    move-object v6, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lp9/d;->n(ZZLjb/m;Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-eqz v9, :cond_4

    neg-int v1, v1

    iget-object v2, p3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_4
    invoke-virtual {p3, p1, v2}, Lio/reactivex/rxjava3/internal/observers/c;->l(Ljb/m;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static G(ILjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Immutable list must not contain a null element, found at index "

    const-string v1, "."

    invoke-static {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final H(Lkotlin/coroutines/i;)V
    .locals 1

    sget-object v0, Lc3/l;->f:Lc3/l;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/y0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlinx/coroutines/y0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/f1;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 1

    new-instance v0, Lj6/c;

    invoke-direct {v0, p1, p2}, Lj6/c;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public static J(Ljava/lang/String;Lcom/google/firebase/concurrent/h;)La5/c;
    .locals 3

    const-class v0, Lp5/a;

    invoke-static {v0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, La5/b;->b:I

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v1

    invoke-virtual {v0, v1}, La5/b;->a(La5/l;)V

    new-instance v1, Lp5/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lp5/d;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Lkotlin/coroutines/i;)Lkotlinx/coroutines/y0;
    .locals 3

    sget v0, Lkotlinx/coroutines/y0;->g0:I

    sget-object v0, Lc3/l;->f:Lc3/l;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/y0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigInteger;

    const-string v1, "3"

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p2, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p4, Ljava/security/spec/ECFieldFp;

    invoke-direct {p4, v0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ljava/security/spec/EllipticCurve;

    invoke-direct {v0, p4, p1, v1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, p2, p3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    const/4 p3, 0x1

    invoke-direct {p2, v0, p1, p0, p3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p2
.end method

.method public static final M(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .locals 1

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/w0;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/w0;-><init>(Lkotlinx/serialization/c;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v0, Lo/g;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lo/f;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p0 .. p0}, Lp9/d;->i(Lo/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v0, v1, v3}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_0
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v4

    invoke-virtual {v3}, Lo/d;->d()I

    move-result v5

    invoke-virtual {v4}, Lo/d;->d()I

    move-result v6

    iget-object v7, v3, Lo/d;->a:Ljava/util/HashSet;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eqz v7, :cond_c

    iget-boolean v3, v3, Lo/d;->c:Z

    if-eqz v3, :cond_c

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/d;

    iget-object v12, v7, Lo/d;->d:Lo/f;

    invoke-static {v12}, Lp9/d;->i(Lo/f;)Z

    move-result v13

    invoke-virtual {v12}, Lo/f;->v()Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v13, :cond_1

    new-instance v14, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v12, v1, v14}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_1
    iget-object v14, v12, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v9

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v8, v12, Lo/f;->C:Lo/d;

    iget-object v9, v12, Lo/f;->E:Lo/d;

    if-ne v14, v15, :cond_7

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    if-ne v14, v15, :cond_b

    iget v13, v12, Lo/f;->p:I

    if-ltz v13, :cond_b

    iget v13, v12, Lo/f;->o:I

    if-ltz v13, :cond_b

    iget v13, v12, Lo/f;->b0:I

    if-eq v13, v11, :cond_3

    iget v13, v12, Lo/f;->l:I

    if-nez v13, :cond_b

    iget v13, v12, Lo/f;->R:F

    cmpl-float v13, v13, v10

    if-nez v13, :cond_b

    :cond_3
    invoke-virtual {v12}, Lo/f;->t()Z

    move-result v13

    if-nez v13, :cond_b

    iget-boolean v13, v12, Lo/f;->z:Z

    if-nez v13, :cond_b

    if-ne v7, v8, :cond_4

    iget-object v13, v9, Lo/d;->f:Lo/d;

    if-eqz v13, :cond_4

    iget-boolean v13, v13, Lo/d;->c:Z

    if-nez v13, :cond_5

    :cond_4
    if-ne v7, v9, :cond_6

    iget-object v7, v8, Lo/d;->f:Lo/d;

    if-eqz v7, :cond_6

    iget-boolean v7, v7, Lo/d;->c:Z

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_b

    invoke-virtual {v12}, Lo/f;->t()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v0, v1, v12, v2}, Lp9/d;->n0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;Z)V

    goto :goto_4

    :cond_7
    :goto_2
    invoke-virtual {v12}, Lo/f;->v()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    if-ne v7, v8, :cond_9

    iget-object v13, v9, Lo/d;->f:Lo/d;

    if-nez v13, :cond_9

    invoke-virtual {v8}, Lo/d;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Lo/f;->n()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v12, v7, v8}, Lo/f;->B(II)V

    goto :goto_3

    :cond_9
    if-ne v7, v9, :cond_a

    iget-object v13, v8, Lo/d;->f:Lo/d;

    if-nez v13, :cond_a

    invoke-virtual {v9}, Lo/d;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Lo/f;->n()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v12, v8, v7}, Lo/f;->B(II)V

    :goto_3
    invoke-static {v12, v1, v2}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    goto :goto_4

    :cond_a
    if-ne v7, v8, :cond_b

    iget-object v7, v9, Lo/d;->f:Lo/d;

    if-eqz v7, :cond_b

    iget-boolean v7, v7, Lo/d;->c:Z

    if-eqz v7, :cond_b

    invoke-virtual {v12}, Lo/f;->t()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v12, v1, v2}, Lp9/d;->m0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    :cond_b
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    instance-of v3, v0, Lo/k;

    if-eqz v3, :cond_d

    return-void

    :cond_d
    iget-object v3, v4, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_19

    iget-boolean v4, v4, Lo/d;->c:Z

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    iget-object v5, v4, Lo/d;->d:Lo/f;

    invoke-static {v5}, Lp9/d;->i(Lo/f;)Z

    move-result v7

    invoke-virtual {v5}, Lo/f;->v()Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v7, :cond_f

    new-instance v8, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v5, v1, v8}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_f
    iget-object v8, v5, Lo/f;->C:Lo/d;

    iget-object v9, v5, Lo/f;->E:Lo/d;

    if-ne v4, v8, :cond_10

    iget-object v12, v9, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_10

    iget-boolean v12, v12, Lo/d;->c:Z

    if-nez v12, :cond_11

    :cond_10
    if-ne v4, v9, :cond_12

    iget-object v12, v8, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_12

    iget-boolean v12, v12, Lo/d;->c:Z

    if-eqz v12, :cond_12

    :cond_11
    const/4 v12, 0x1

    goto :goto_6

    :cond_12
    const/4 v12, 0x0

    :goto_6
    iget-object v13, v5, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_15

    if-eqz v7, :cond_13

    goto :goto_7

    :cond_13
    if-ne v13, v15, :cond_e

    iget v4, v5, Lo/f;->p:I

    if-ltz v4, :cond_e

    iget v4, v5, Lo/f;->o:I

    if-ltz v4, :cond_e

    iget v4, v5, Lo/f;->b0:I

    if-eq v4, v11, :cond_14

    iget v4, v5, Lo/f;->l:I

    if-nez v4, :cond_e

    iget v4, v5, Lo/f;->R:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_e

    :cond_14
    invoke-virtual {v5}, Lo/f;->t()Z

    move-result v4

    if-nez v4, :cond_e

    iget-boolean v4, v5, Lo/f;->z:Z

    if-nez v4, :cond_e

    if-eqz v12, :cond_e

    invoke-virtual {v5}, Lo/f;->t()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v0, v1, v5, v2}, Lp9/d;->n0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;Z)V

    goto :goto_5

    :cond_15
    :goto_7
    invoke-virtual {v5}, Lo/f;->v()Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_5

    :cond_16
    if-ne v4, v8, :cond_17

    iget-object v7, v9, Lo/d;->f:Lo/d;

    if-nez v7, :cond_17

    invoke-virtual {v8}, Lo/d;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lo/f;->n()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v4, v7}, Lo/f;->B(II)V

    goto :goto_8

    :cond_17
    if-ne v4, v9, :cond_18

    iget-object v4, v8, Lo/d;->f:Lo/d;

    if-nez v4, :cond_18

    invoke-virtual {v9}, Lo/d;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lo/f;->n()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v5, v7, v4}, Lo/f;->B(II)V

    :goto_8
    invoke-static {v5, v1, v2}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    goto/16 :goto_5

    :cond_18
    if-eqz v12, :cond_e

    invoke-virtual {v5}, Lo/f;->t()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v5, v1, v2}, Lp9/d;->m0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    goto/16 :goto_5

    :cond_19
    return-void
.end method

.method public static O(II)V
    .locals 4

    if-ltz p0, :cond_1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "."

    if-gez p0, :cond_2

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index must not be smaller than 0, but was "

    invoke-static {v1, p0, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index must not be greater than or equal to the size ("

    const-string v3, "), but was "

    invoke-static {v2, p1, v3, p0, v0}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static P(III)V
    .locals 3

    if-ltz p0, :cond_1

    if-gt p0, p1, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "."

    if-ltz p0, :cond_3

    if-le p0, p1, :cond_2

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Start index must not be greater than the end index, but "

    const-string v2, " > "

    invoke-static {v1, p0, v2, p1, v0}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "End index must not be greater than or equal to the size ("

    const-string v2, "), but was "

    invoke-static {v1, p2, v2, p1, v0}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Start index must not be smaller than 0, but was "

    invoke-static {p2, p0, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final Q(I)Landroidx/work/BackoffPolicy;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to BackoffPolicy"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    :goto_0
    return-object p0
.end method

.method public static final R(I)Landroidx/work/NetworkType;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to NetworkType"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    goto :goto_0

    :cond_5
    sget-object p0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    :goto_0
    return-object p0
.end method

.method public static final S(I)Landroidx/work/OutOfQuotaPolicy;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to OutOfQuotaPolicy"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    :goto_0
    return-object p0
.end method

.method public static final T(I)Landroidx/work/WorkInfo$State;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not convert "

    const-string v2, " to State"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    goto :goto_0

    :cond_5
    sget-object p0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    :goto_0
    return-object p0
.end method

.method public static U(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "malformed properties length"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, " must not be included more than once"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final X(Landroidx/work/NetworkType;)I
    .locals 3

    const-string v0, "networkType"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp1/w;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " must be at least one character long."

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lp9/d;->a0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static final a()Lkotlinx/serialization/internal/h0;
    .locals 4

    sget-object v0, Lkotlinx/serialization/internal/m1;->a:Lkotlinx/serialization/internal/m1;

    sget-object v1, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    new-instance v2, Lkotlinx/serialization/internal/h0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/serialization/internal/h0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;I)V

    return-object v2
.end method

.method public static a0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " must not be implemented by the user, but was implemented by "

    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(Lzb/d;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/o;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null."

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(I)[Ljava/lang/Object;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Lzb/c;)Lkotlinx/serialization/json/j;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/json/j;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z
    .locals 1

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "malformed boolean for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p1}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static e0(JLvc/c;Ljava/util/ArrayDeque;Ljava/util/concurrent/atomic/AtomicLong;Lgb/e;)Z
    .locals 8

    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    :cond_0
    :goto_0
    cmp-long v4, v2, p0

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {p5}, Lgb/e;->getAsBoolean()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    move v4, v5

    :goto_1
    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {p2}, Lvc/c;->onComplete()V

    return v5

    :cond_2
    invoke-interface {p2, v4}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {p5}, Lgb/e;->getAsBoolean()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    move p0, v5

    :goto_2
    if-eqz p0, :cond_4

    return v5

    :cond_4
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p2}, Lvc/c;->onComplete()V

    return v5

    :cond_5
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    neg-long v2, v2

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    and-long/2addr p0, v2

    const-wide/16 v4, 0x0

    cmp-long p0, p0, v4

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    and-long p0, v2, v0

    move-wide v6, p0

    move-wide p0, v2

    move-wide v2, v6

    goto :goto_0
.end method

.method public static final f([B)Ljava/util/LinkedHashSet;
    .locals 9

    const-string v0, "bytes"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    new-instance v7, Landroidx/work/c;

    const-string v8, "uri"

    invoke-static {v5, v8}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v5}, Landroidx/work/c;-><init>(ZLandroid/net/Uri;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {v3, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v3, v2}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    invoke-static {v1, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static f0(JLvc/c;Ljava/util/ArrayDeque;Ljava/util/concurrent/atomic/AtomicLong;Llb/e;)Z
    .locals 8

    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    :cond_0
    :goto_0
    cmp-long v4, v2, p0

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {p5}, Llb/e;->getAsBoolean()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Li4/f;->L(Ljava/lang/Throwable;)V

    move v4, v5

    :goto_1
    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {p2}, Lvc/c;->onComplete()V

    return v5

    :cond_2
    invoke-interface {p2, v4}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {p5}, Llb/e;->getAsBoolean()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {p0}, Li4/f;->L(Ljava/lang/Throwable;)V

    move p0, v5

    :goto_2
    if-eqz p0, :cond_4

    return v5

    :cond_4
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p2}, Lvc/c;->onComplete()V

    return v5

    :cond_5
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    neg-long v2, v2

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    and-long/2addr p0, v2

    const-wide/16 v4, 0x0

    cmp-long p0, p0, v4

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    and-long p0, v2, v0

    move-wide v6, p0

    move-wide p0, v2

    move-wide v2, v6

    goto :goto_0
.end method

.method public static final g0(II[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h0(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lo/f;)Z
    .locals 7

    iget-object v0, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v4, p0, Lo/f;->O:Lo/f;

    if-eqz v4, :cond_0

    check-cast v4, Lo/g;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_2
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v6, :cond_5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v6, :cond_3

    iget v2, p0, Lo/f;->l:I

    if-nez v2, :cond_3

    iget v2, p0, Lo/f;->R:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lo/f;->q(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Lo/f;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v4, :cond_8

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v4, :cond_8

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_6

    iget v0, p0, Lo/f;->m:I

    if-nez v0, :cond_6

    iget v0, p0, Lo/f;->R:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, Lo/f;->q(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Lo/f;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, Lo/f;->R:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static i0(Landroid/content/Context;IZ)Z
    .locals 1

    invoke-static {p0, p1}, Lp9/d;->h0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public static final j(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget v0, Lkotlinx/coroutines/y0;->g0:I

    sget-object v0, Lc3/l;->f:Lc3/l;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/y0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/y0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static j0(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;
    .locals 3

    invoke-static {p1, p0}, Lp9/d;->h0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(Ljava/lang/String;Lz5/b;)V
    .locals 2

    iget-boolean p1, p1, Lz5/b;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v1, " must not be included if problem information is not requested"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p1
.end method

.method public static final k0(Ljava/util/Set;)[B
    .locals 4

    const-string v0, "triggers"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/c;

    iget-object v3, v2, Landroidx/work/c;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v2, v2, Landroidx/work/c;->b:Z

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :try_start_2
    invoke-static {v1, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "outputStream.toByteArray()"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p0}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static l(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-static {p0}, Ll9/b;->T(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    if-ge p0, v0, :cond_0

    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v0, "must not have a payload"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static l0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%064x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v5, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    invoke-static {p0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to hash : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->O(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static varargs m([Landroidx/core/util/d;)V
    .locals 6

    invoke-static {}, Lfc/e;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroidx/core/util/d;->b:Ljava/lang/Object;

    instance-of v4, v2, Ljava/lang/String;

    const-string v5, " is null"

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException;

    invoke-static {v3, v5}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException;

    invoke-static {v3, v5}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;

    const-string v0, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V
    .locals 6

    iget v0, p0, Lo/f;->Y:F

    iget-object v1, p0, Lo/f;->C:Lo/d;

    iget-object v2, v1, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->d()I

    move-result v2

    iget-object v3, p0, Lo/f;->E:Lo/d;

    iget-object v4, v3, Lo/d;->f:Lo/d;

    invoke-virtual {v4}, Lo/d;->d()I

    move-result v4

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lo/d;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lo/f;->n()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_2

    sub-int v3, v0, v1

    :cond_2
    invoke-virtual {p0, v0, v3}, Lo/f;->B(II)V

    invoke-static {p0, p1, p2}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    return-void
.end method

.method public static n(ZZLjb/m;Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)Z
    .locals 1

    iget-boolean p5, p5, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    invoke-interface {p3}, Lio/reactivex/rxjava3/operators/f;->clear()V

    invoke-interface {p4}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    return v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_1
    invoke-interface {p2}, Ljb/m;->onComplete()V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static n0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;Z)V
    .locals 7

    iget v0, p2, Lo/f;->Y:F

    iget-object v1, p2, Lo/f;->C:Lo/d;

    iget-object v2, v1, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->d()I

    move-result v2

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, Lo/f;->E:Lo/d;

    iget-object v3, v2, Lo/d;->f:Lo/d;

    invoke-virtual {v3}, Lo/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, Lo/f;->n()I

    move-result v2

    iget v4, p2, Lo/f;->b0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Lo/f;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, Lo/g;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo/f;->O:Lo/f;

    :goto_0
    invoke-virtual {p0}, Lo/f;->n()I

    move-result p0

    iget v2, p2, Lo/f;->Y:F

    mul-float/2addr v2, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, Lo/f;->o:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, Lo/f;->p:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Lo/f;->B(II)V

    invoke-static {p2, p1, p3}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    :cond_4
    return-void
.end method

.method public static final o(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->getAnnotations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    instance-of v1, v0, Lkotlinx/serialization/json/h;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/serialization/json/h;

    invoke-interface {v0}, Lkotlinx/serialization/json/h;->discriminator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-object p0, p0, Lkotlinx/serialization/json/i;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static o0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V
    .locals 6

    iget v0, p0, Lo/f;->Z:F

    iget-object v1, p0, Lo/f;->D:Lo/d;

    iget-object v2, v1, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->d()I

    move-result v2

    iget-object v3, p0, Lo/f;->F:Lo/d;

    iget-object v4, v3, Lo/d;->f:Lo/d;

    invoke-virtual {v4}, Lo/d;->d()I

    move-result v4

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lo/d;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lo/f;->l()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_2

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_2
    invoke-virtual {p0, v3, v5}, Lo/f;->C(II)V

    invoke-static {p0, p1}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    return-void
.end method

.method public static p(Lio/netty/channel/Channel;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v0, p1}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static p0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;)V
    .locals 7

    iget v0, p2, Lo/f;->Z:F

    iget-object v1, p2, Lo/f;->D:Lo/d;

    iget-object v2, v1, Lo/d;->f:Lo/d;

    invoke-virtual {v2}, Lo/d;->d()I

    move-result v2

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p2, Lo/f;->F:Lo/d;

    iget-object v3, v2, Lo/d;->f:Lo/d;

    invoke-virtual {v3}, Lo/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p2}, Lo/f;->l()I

    move-result v2

    iget v4, p2, Lo/f;->b0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Lo/f;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p0, Lo/g;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo/f;->O:Lo/f;

    :goto_0
    invoke-virtual {p0}, Lo/f;->l()I

    move-result p0

    mul-float v2, v0, v6

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p0, p2, Lo/f;->r:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p2, Lo/f;->s:I

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p0, v3

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Lo/f;->C(II)V

    invoke-static {p2, p1}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    :cond_4
    return-void
.end method

.method public static final q(JJJ)J
    .locals 1

    cmp-long v0, p2, p4

    if-gtz v0, :cond_2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q0(Landroidx/work/WorkInfo$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp1/w;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/util/ArrayDeque;I)[B
    .locals 6

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v0

    sub-int v2, p1, v2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_0
    if-lez v2, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p1, v2

    invoke-static {v3, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final r0(Lxb/d;I)Lxb/d;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget v0, p0, Lxb/d;->c:I

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    new-instance v0, Lxb/d;

    iget v1, p0, Lxb/d;->a:I

    iget p0, p0, Lxb/d;->b:I

    invoke-direct {v0, v1, p0, p1}, Lxb/d;-><init>(III)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step must be positive, was: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final s(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D
    .locals 6

    const-string v0, "targetUnit"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    long-to-double p2, v0

    mul-double/2addr p0, p2

    return-wide p0

    :cond_0
    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p3}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p3

    invoke-virtual {p2, v2, v3, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static final s0(Ljava/lang/String;Lkotlin/reflect/c;)V
    .locals 4

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in the scope of \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lkotlin/jvm/internal/j;

    invoke-virtual {p1}, Lkotlin/jvm/internal/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlinx/serialization/SerializationException;

    if-nez p0, :cond_0

    const-string p0, "Class discriminator was missing and no default polymorphic serializers were registered "

    invoke-static {p0, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "Class \'"

    const-string v2, "\' is not registered for polymorphic serialization "

    const-string v3, ".\nMark the base class as \'sealed\' or register the serializer explicitly."

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final t(Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/x;

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/internal/x;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    invoke-static {v0, v0, p0}, Li4/g;->y(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public static t0(Lcom/google/firebase/messaging/d;)[B
    .locals 10

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    const/16 v4, 0x80

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v4, 0x2000

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v1

    :goto_0
    const/4 v5, -0x1

    const v6, 0x7ffffff7

    if-ge v4, v6, :cond_5

    sub-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_1

    sub-int v9, v6, v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/firebase/messaging/d;->read([BII)I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-static {v0, v4}, Lp9/d;->r(Ljava/util/ArrayDeque;I)[B

    move-result-object p0

    goto :goto_3

    :cond_0
    add-int/2addr v8, v9

    add-int/2addr v4, v9

    goto :goto_1

    :cond_1
    int-to-long v5, v2

    const/16 v7, 0x1000

    if-ge v2, v7, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    int-to-long v7, v2

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x7fffffff

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    const v2, 0x7fffffff

    goto :goto_0

    :cond_3
    const-wide/32 v7, -0x80000000

    cmp-long v2, v5, v7

    if-gez v2, :cond_4

    const/high16 v2, -0x80000000

    goto :goto_0

    :cond_4
    long-to-int v2, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/messaging/d;->read()I

    move-result p0

    if-ne p0, v5, :cond_6

    invoke-static {v0, v6}, Lp9/d;->r(Ljava/util/ArrayDeque;I)[B

    move-result-object p0

    :goto_3
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "input is too large to fit in a byte array"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)La5/c;
    .locals 2

    new-instance v0, Lp5/a;

    invoke-direct {v0, p0, p1}, Lp5/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lp5/a;

    invoke-static {p0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, La5/b;->b:I

    new-instance p1, La5/a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {p0}, La5/b;->b()La5/c;

    move-result-object p0

    return-object p0
.end method

.method public static u0(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I
    .locals 0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static v(II)V
    .locals 4

    if-ltz p0, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "."

    if-gez p0, :cond_2

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cursor index must not be smaller than 0, but was "

    invoke-static {v1, p0, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Cursor index must not be greater than the size ("

    const-string v3, "), but was "

    invoke-static {v2, p1, v3, p0, v0}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final v0(II)Lxb/f;
    .locals 1

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lxb/f;->d:Lxb/f;

    sget-object p0, Lxb/f;->d:Lxb/f;

    return-object p0

    :cond_0
    new-instance v0, Lxb/f;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lxb/f;-><init>(II)V

    return-object v0
.end method

.method public static w(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p2, "malformed binary data for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Lo/g;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lo/f;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Lp9/d;->i(Lo/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v0, v1, v2}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v3

    invoke-virtual {v2}, Lo/d;->d()I

    move-result v4

    invoke-virtual {v3}, Lo/d;->d()I

    move-result v5

    iget-object v6, v2, Lo/d;->a:Ljava/util/HashSet;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v6, :cond_c

    iget-boolean v2, v2, Lo/d;->c:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    iget-object v11, v6, Lo/d;->d:Lo/f;

    invoke-static {v11}, Lp9/d;->i(Lo/f;)Z

    move-result v12

    invoke-virtual {v11}, Lo/f;->v()Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v12, :cond_2

    new-instance v13, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v11, v1, v13}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_2
    iget-object v13, v11, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v13, v7

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v15, v11, Lo/f;->D:Lo/d;

    iget-object v8, v11, Lo/f;->F:Lo/d;

    if-ne v13, v14, :cond_8

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne v13, v14, :cond_1

    iget v12, v11, Lo/f;->s:I

    if-ltz v12, :cond_1

    iget v12, v11, Lo/f;->r:I

    if-ltz v12, :cond_1

    iget v12, v11, Lo/f;->b0:I

    if-eq v12, v10, :cond_4

    iget v12, v11, Lo/f;->m:I

    if-nez v12, :cond_1

    iget v12, v11, Lo/f;->R:F

    cmpl-float v12, v12, v9

    if-nez v12, :cond_1

    :cond_4
    invoke-virtual {v11}, Lo/f;->u()Z

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v11, Lo/f;->z:Z

    if-nez v12, :cond_1

    if-ne v6, v15, :cond_5

    iget-object v12, v8, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_5

    iget-boolean v12, v12, Lo/d;->c:Z

    if-nez v12, :cond_6

    :cond_5
    if-ne v6, v8, :cond_7

    iget-object v6, v15, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_7

    iget-boolean v6, v6, Lo/d;->c:Z

    if-eqz v6, :cond_7

    :cond_6
    move v6, v7

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v11}, Lo/f;->u()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0, v1, v11}, Lp9/d;->p0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;)V

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {v11}, Lo/f;->v()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_0

    :cond_9
    if-ne v6, v15, :cond_a

    iget-object v12, v8, Lo/d;->f:Lo/d;

    if-nez v12, :cond_a

    invoke-virtual {v15}, Lo/d;->e()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v11}, Lo/f;->l()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v11, v6, v8}, Lo/f;->C(II)V

    goto :goto_3

    :cond_a
    if-ne v6, v8, :cond_b

    iget-object v12, v8, Lo/d;->f:Lo/d;

    if-nez v12, :cond_b

    invoke-virtual {v8}, Lo/d;->e()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v11}, Lo/f;->l()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v11, v8, v6}, Lo/f;->C(II)V

    :goto_3
    invoke-static {v11, v1}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    goto/16 :goto_0

    :cond_b
    if-ne v6, v15, :cond_1

    iget-object v6, v8, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_1

    iget-boolean v6, v6, Lo/d;->c:Z

    if-eqz v6, :cond_1

    invoke-static {v11, v1}, Lp9/d;->o0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    goto/16 :goto_0

    :cond_c
    instance-of v2, v0, Lo/k;

    if-eqz v2, :cond_d

    return-void

    :cond_d
    iget-object v2, v3, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_19

    iget-boolean v3, v3, Lo/d;->c:Z

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v4, v3, Lo/d;->d:Lo/f;

    invoke-static {v4}, Lp9/d;->i(Lo/f;)Z

    move-result v6

    invoke-virtual {v4}, Lo/f;->v()Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v6, :cond_f

    new-instance v8, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v4, v1, v8}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_f
    iget-object v8, v4, Lo/f;->D:Lo/d;

    iget-object v11, v4, Lo/f;->F:Lo/d;

    if-ne v3, v8, :cond_10

    iget-object v12, v11, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_10

    iget-boolean v12, v12, Lo/d;->c:Z

    if-nez v12, :cond_11

    :cond_10
    if-ne v3, v11, :cond_12

    iget-object v12, v8, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_12

    iget-boolean v12, v12, Lo/d;->c:Z

    if-eqz v12, :cond_12

    :cond_11
    move v12, v7

    goto :goto_5

    :cond_12
    const/4 v12, 0x0

    :goto_5
    iget-object v13, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v13, v7

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_15

    if-eqz v6, :cond_13

    goto :goto_6

    :cond_13
    if-ne v13, v14, :cond_e

    iget v3, v4, Lo/f;->s:I

    if-ltz v3, :cond_e

    iget v3, v4, Lo/f;->r:I

    if-ltz v3, :cond_e

    iget v3, v4, Lo/f;->b0:I

    if-eq v3, v10, :cond_14

    iget v3, v4, Lo/f;->m:I

    if-nez v3, :cond_e

    iget v3, v4, Lo/f;->R:F

    cmpl-float v3, v3, v9

    if-nez v3, :cond_e

    :cond_14
    invoke-virtual {v4}, Lo/f;->u()Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, v4, Lo/f;->z:Z

    if-nez v3, :cond_e

    if-eqz v12, :cond_e

    invoke-virtual {v4}, Lo/f;->u()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v0, v1, v4}, Lp9/d;->p0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;)V

    goto :goto_4

    :cond_15
    :goto_6
    invoke-virtual {v4}, Lo/f;->v()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_4

    :cond_16
    if-ne v3, v8, :cond_17

    iget-object v6, v11, Lo/d;->f:Lo/d;

    if-nez v6, :cond_17

    invoke-virtual {v8}, Lo/d;->e()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lo/f;->l()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v3, v6}, Lo/f;->C(II)V

    goto :goto_7

    :cond_17
    if-ne v3, v11, :cond_18

    iget-object v3, v8, Lo/d;->f:Lo/d;

    if-nez v3, :cond_18

    invoke-virtual {v11}, Lo/d;->e()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v4}, Lo/f;->l()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v4, v6, v3}, Lo/f;->C(II)V

    :goto_7
    invoke-static {v4, v1}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    goto/16 :goto_4

    :cond_18
    if-eqz v12, :cond_e

    invoke-virtual {v4}, Lo/f;->u()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v4, v1}, Lp9/d;->o0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    goto/16 :goto_4

    :cond_19
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget-object v2, v0, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_1f

    iget-boolean v2, v0, Lo/d;->c:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lo/d;->d()I

    move-result v2

    iget-object v0, v0, Lo/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v4, v3, Lo/d;->d:Lo/f;

    invoke-static {v4}, Lp9/d;->i(Lo/f;)Z

    move-result v5

    invoke-virtual {v4}, Lo/f;->v()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v5, :cond_1b

    new-instance v6, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v6}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    invoke-static {v4, v1, v6}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_1b
    iget-object v6, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_1c

    if-eqz v5, :cond_1a

    :cond_1c
    invoke-virtual {v4}, Lo/f;->v()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_8

    :cond_1d
    iget-object v5, v4, Lo/f;->G:Lo/d;

    if-ne v3, v5, :cond_1a

    iget-boolean v3, v4, Lo/f;->y:Z

    if-nez v3, :cond_1e

    goto :goto_9

    :cond_1e
    iget v3, v4, Lo/f;->V:I

    sub-int v3, v2, v3

    iget v6, v4, Lo/f;->Q:I

    add-int/2addr v6, v3

    iput v3, v4, Lo/f;->U:I

    iget-object v8, v4, Lo/f;->D:Lo/d;

    invoke-virtual {v8, v3}, Lo/d;->l(I)V

    iget-object v3, v4, Lo/f;->F:Lo/d;

    invoke-virtual {v3, v6}, Lo/d;->l(I)V

    invoke-virtual {v5, v2}, Lo/d;->l(I)V

    iput-boolean v7, v4, Lo/f;->i:Z

    :goto_9
    invoke-static {v4, v1}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public static x(Lio/netty/buffer/ByteBuf;)I
    .locals 1

    invoke-static {p0}, Ll9/b;->T(Lio/netty/buffer/ByteBuf;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v0, "malformed property identifier"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong property with identifier "

    invoke-static {v1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static y(Lio/netty/buffer/ByteBuf;)I
    .locals 1

    invoke-static {p0}, Ll9/b;->T(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong reason code"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;
    .locals 1

    const-string v0, "reason string"

    invoke-static {p0, v0, p1}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c0(I)V
.end method

.method public abstract d0(Landroid/graphics/Typeface;)V
.end method

.method public g(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lv/n;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lv/n;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h(Landroid/graphics/Typeface;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ld/p0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
