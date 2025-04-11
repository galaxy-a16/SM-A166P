.class public abstract Li4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/b;


# static fields
.field public static final a:Lcom/google/gson/internal/e;

.field public static final b:Lcom/google/gson/internal/e;

.field public static final c:Lr/i;

.field public static final d:Lcom/google/gson/internal/c;

.field public static final synthetic e:I

.field public static final f:Lcom/google/gson/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Li4/f;->a:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Li4/f;->b:Lcom/google/gson/internal/e;

    new-instance v0, Lr/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lr/i;-><init>(I)V

    sput-object v0, Li4/f;->c:Lr/i;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Li4/f;->d:Lcom/google/gson/internal/c;

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    sput-object v0, Li4/f;->f:Lcom/google/gson/internal/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static B()Z
    .locals 5

    invoke-static {}, Lfc/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "f"

    const-string v1, "country iso code is empty"

    invoke-static {v0, v1}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "MAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "HKG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v2

    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        0x903 -> :sswitch_3
        0x9a2 -> :sswitch_2
        0x117a4 -> :sswitch_1
        0x1292f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final D(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static E(Lkotlinx/coroutines/y;Lkotlinx/coroutines/h1;Lkotlinx/coroutines/CoroutineStart;Lvb/c;I)Lkotlinx/coroutines/n1;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-interface {p0}, Lkotlinx/coroutines/y;->c()Lkotlin/coroutines/i;

    move-result-object p0

    const/4 p4, 0x1

    invoke-static {p0, p1, p4}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    if-eq p0, p1, :cond_2

    sget-object v0, Le9/a;->c:Le9/a;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :cond_2
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lkotlinx/coroutines/g1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/g1;-><init>(Lkotlin/coroutines/i;Lvb/c;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlinx/coroutines/n1;

    invoke-direct {p1, p0, p4}, Lkotlinx/coroutines/n1;-><init>(Lkotlin/coroutines/i;Z)V

    :goto_0
    invoke-virtual {p2, p3, p1, p1}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public static F(Lu6/c;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lh8/a;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " exceeded maximum packet size, minimal possible encoded length: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maximum: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-static {v1, p2, p0}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final G(Lkotlinx/coroutines/g0;Lkotlin/coroutines/d;Z)V
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/g0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/g0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/g0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_5

    check-cast p1, Lkotlinx/coroutines/internal/e;

    iget-object p2, p1, Lkotlinx/coroutines/internal/e;->e:Lkotlin/coroutines/d;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    iget-object v1, p1, Lkotlinx/coroutines/internal/e;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    if-eq v1, v2, :cond_1

    invoke-static {p2, v0, v1}, Lkotlinx/coroutines/a0;->O(Lkotlin/coroutines/d;Lkotlin/coroutines/i;Ljava/lang/Object;)Lkotlinx/coroutines/s1;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->e:Lkotlin/coroutines/d;

    invoke-interface {p1, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lkotlinx/coroutines/s1;->T()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lkotlinx/coroutines/s1;->T()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static H(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static final I(Ljava/net/Socket;)Lkc/b;
    .locals 3

    new-instance v0, Lkc/s;

    invoke-direct {v0, p0}, Lkc/s;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lkc/b;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lkc/b;-><init>(Ljava/io/OutputStream;Lkc/s;)V

    new-instance p0, Lkc/b;

    invoke-direct {p0, v0, v1}, Lkc/b;-><init>(Lkc/s;Lkc/b;)V

    return-object p0
.end method

.method public static final J(Ljava/net/Socket;)Lkc/c;
    .locals 3

    new-instance v0, Lkc/s;

    invoke-direct {v0, p0}, Lkc/s;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lkc/c;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lkc/c;-><init>(Ljava/io/InputStream;Lkc/v;)V

    new-instance p0, Lkc/c;

    invoke-direct {p0, v0, v1}, Lkc/c;-><init>(Lkc/s;Lkc/c;)V

    return-object p0
.end method

.method public static final K(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/internal/WriteMode;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/descriptors/d;

    if-eqz v1, :cond_0

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_2

    :cond_0
    sget-object v1, Lkotlinx/serialization/descriptors/o;->b:Lkotlinx/serialization/descriptors/o;

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_2

    :cond_1
    sget-object v1, Lkotlinx/serialization/descriptors/o;->c:Lkotlinx/serialization/descriptors/o;

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    iget-object v0, p1, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    invoke-static {p0, v0}, Li4/f;->d(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/modules/b;)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/descriptors/f;

    if-nez v1, :cond_4

    sget-object v1, Lkotlinx/serialization/descriptors/m;->a:Lkotlinx/serialization/descriptors/m;

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean p1, p1, Lkotlinx/serialization/json/i;->d:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lv9/a;->c(Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_2

    :cond_5
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    :goto_2
    return-object p0
.end method

.method public static L(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method

.method public static M()V
    .locals 2

    new-instance v0, Lkotlin/KotlinNullPointerException;

    invoke-direct {v0}, Lkotlin/KotlinNullPointerException;-><init>()V

    const-class v1, Li4/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public static N()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static O(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lateinit property "

    const-string v1, " has not been initialized"

    invoke-static {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/UninitializedPropertyAccessException;

    invoke-direct {v0, p0}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    const-class p0, Li4/f;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "fcm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "spp"

    goto :goto_0

    :cond_0
    const-string p1, "fcm"

    :goto_0
    const-string v0, "f"

    const-string v1, "toggle next push type : "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "next_push_type"

    invoke-virtual {p0, v0, p1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static Q(Lvc/c;Lgb/h;Leb/e;)Z
    .locals 1

    instance-of v0, p2, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :try_start_0
    check-cast p2, Ljava/util/concurrent/Callable;

    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lvc/c;)V

    return v0

    :cond_0
    :try_start_1
    invoke-interface {p1, p2}, Lgb/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The mapper returned a null Publisher"

    invoke-static {p1, p2}, Lfc/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lvc/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of p2, p1, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_2

    :try_start_2
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_1

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lvc/c;)V

    return v0

    :cond_1
    new-instance p2, Lio/reactivex/internal/subscriptions/ScalarSubscription;

    invoke-direct {p2, p0, p1}, Lio/reactivex/internal/subscriptions/ScalarSubscription;-><init>(Lvc/c;Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lvc/c;->onSubscribe(Lvc/d;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lvc/b;->subscribe(Lvc/c;)V

    :goto_0
    return v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    invoke-static {p1, p0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lvc/c;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final S(Lkotlinx/coroutines/t;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/a0;->w(Lkotlin/coroutines/i;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lp9/d;->H(Lkotlin/coroutines/i;)V

    if-ne p0, v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/internal/x;

    invoke-direct {v0, p2, p0}, Lkotlinx/coroutines/internal/x;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    invoke-static {v0, v0, p1}, Li4/g;->y(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lvb/c;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v1, Le9/a;->c:Le9/a;

    invoke-interface {p0, v1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v2

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    invoke-static {v2, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/s1;

    invoke-direct {v0, p2, p0}, Lkotlinx/coroutines/s1;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    invoke-static {v0, v0, p1}, Li4/g;->y(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lvb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Lkotlinx/coroutines/f0;

    invoke-direct {v0, p2, p0}, Lkotlinx/coroutines/f0;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    invoke-static {p1, v0, v0, v1}, Lh3/a;->W(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;Lvb/b;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/f0;->T()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Lkotlinx/serialization/c;)Lkotlinx/serialization/internal/i0;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/i0;

    new-instance v1, Lkotlinx/serialization/internal/j0;

    invoke-direct {v1, p1}, Lkotlinx/serialization/internal/j0;-><init>(Lkotlinx/serialization/c;)V

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/i0;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/j0;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final d(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/modules/b;)Lkotlinx/serialization/descriptors/g;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/l;->a:Lkotlinx/serialization/descriptors/l;

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lv4/b;->E(Lkotlinx/serialization/descriptors/g;)Lkotlin/reflect/c;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v2, "typeArgumentsSerializers"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlinx/serialization/modules/b;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->isInline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-static {p0, p1}, Li4/f;->d(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/modules/b;)Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static e(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-class p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v0, Li4/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Li4/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Li4/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-class p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static final l(I)V
    .locals 5

    new-instance v0, Lxb/f;

    const/4 v1, 0x2

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    invoke-virtual {v0, p0}, Lxb/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "radix "

    const-string v4, " was not in valid range "

    invoke-static {v3, p0, v4}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v3, Lxb/f;

    invoke-direct {v3, v1, v2}, Lxb/f;-><init>(II)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4

    const-string v0, "]"

    const-string v1, "["

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "f"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static o(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Li4/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter specified as non-null is null: method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parameter "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(I)I
    .locals 1

    invoke-static {p0}, Ll9/b;->W(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final r(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static t(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lfc/e;->w()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lfc/e;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Li4/f;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf9/a;->c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->SPP_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "next_push_type"

    const-string v1, "fcm"

    invoke-virtual {p0, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const-string p0, "spp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const-string p0, "spp"

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "fcm"

    :goto_2
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    const-string p0, "fcm"

    return-object p0

    :cond_5
    :goto_3
    const-string p0, "spp"

    return-object p0
.end method

.method public static x(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final z(Ljava/lang/AssertionError;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "getsockname failed"

    invoke-static {p0, v0}, Lkotlin/text/s;->P(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized C(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "fcm"

    const-string v1, "push registration success but not valid request : already registered to "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Li4/f;->B()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_PRIMARY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v5

    invoke-virtual {v5, p1}, Lf9/a;->c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    invoke-static {p1}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p1

    invoke-virtual {p1}, Lf9/c;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". keep the current"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized R(Landroid/content/Context;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lfc/e;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf9/a;->c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->SPP_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {p1}, Li4/g;->z(Landroid/content/Context;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p1}, Lh9/a;->F(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_4
    :try_start_1
    invoke-static {p1}, Lh9/a;->H(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract s(Lv1/h;Ljava/util/Map;)Lw1/e;
.end method

.method public declared-synchronized y()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
