.class public abstract Li4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/h;


# static fields
.field public static final a:Lcom/google/gson/internal/e;

.field public static final b:Lcom/google/gson/internal/e;

.field public static final c:Lcom/google/gson/internal/c;

.field public static final synthetic d:I

.field public static final e:Lcom/google/gson/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Li4/g;->a:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Li4/g;->b:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Li4/g;->c:Lcom/google/gson/internal/c;

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    sput-object v0, Li4/g;->e:Lcom/google/gson/internal/d;

    return-void
.end method

.method public static final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "$this$toCanonicalHost"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ":"

    invoke-static {p0, v0}, Lkotlin/text/s;->P(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    const-string v0, "["

    invoke-static {p0, v0, v1}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-static {p0, v0}, Lkotlin/text/r;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v4, v0, p0}, Li4/g;->k(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0, p0}, Li4/g;->k(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_8

    move p0, v1

    move v0, p0

    :goto_1
    array-length v4, v2

    if-ge p0, v4, :cond_3

    move v4, p0

    :goto_2
    if-ge v4, v6, :cond_1

    aget-byte v7, v2, v4

    if-nez v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    if-nez v7, :cond_1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_1
    sub-int v7, v4, p0

    if-le v7, v0, :cond_2

    if-lt v7, v5, :cond_2

    move v3, p0

    move v0, v7

    :cond_2
    add-int/lit8 p0, v4, 0x2

    goto :goto_1

    :cond_3
    new-instance p0, Lkc/e;

    invoke-direct {p0}, Lkc/e;-><init>()V

    :cond_4
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_7

    const/16 v4, 0x3a

    if-ne v1, v3, :cond_5

    invoke-virtual {p0, v4}, Lkc/e;->h0(I)V

    add-int/2addr v1, v0

    if-ne v1, v6, :cond_4

    invoke-virtual {p0, v4}, Lkc/e;->h0(I)V

    goto :goto_3

    :cond_5
    if-lez v1, :cond_6

    invoke-virtual {p0, v4}, Lkc/e;->h0(I)V

    :cond_6
    aget-byte v4, v2, v1

    sget-object v5, Lac/c;->a:[B

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lkc/e;->x0(J)Lkc/e;

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lkc/e;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    array-length v1, v2

    if-ne v1, v5, :cond_9

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid IPv6 address: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_a
    return-object v2

    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IDN.toASCII(host)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v0, v5}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v4

    goto :goto_4

    :cond_c
    move v0, v1

    :goto_4
    if-eqz v0, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v1

    :goto_5
    if-ge v5, v0, :cond_11

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1f

    if-le v6, v7, :cond_10

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_e

    goto :goto_6

    :cond_e
    const-string v7, " #%/:?@[\\]"

    const/4 v8, 0x6

    invoke-static {v7, v6, v1, v1, v8}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v6, v3, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    move v1, v4

    :cond_11
    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    move-object v2, p0

    :catch_0
    :goto_7
    return-object v2
.end method

.method public static b(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/j;
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    :cond_1
    const/4 p2, -0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p0, p2, :cond_9

    const/4 p2, -0x1

    if-eq p0, p2, :cond_6

    if-eqz p0, :cond_4

    const p2, 0x7fffffff

    if-eq p0, p2, :cond_3

    if-ne p0, v0, :cond_2

    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p1, p2, :cond_2

    new-instance p0, Lkotlinx/coroutines/channels/v;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/channels/v;-><init>(Lvb/b;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lkotlinx/coroutines/channels/n;

    invoke-direct {p2, p0, p1, v2}, Lkotlinx/coroutines/channels/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lvb/b;)V

    move-object p0, p2

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/w;

    invoke-direct {p0, v2, v1}, Lkotlinx/coroutines/channels/w;-><init>(Lvb/b;I)V

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p1, p0, :cond_5

    new-instance p0, Lkotlinx/coroutines/channels/w;

    invoke-direct {p0, v2, v0}, Lkotlinx/coroutines/channels/w;-><init>(Lvb/b;I)V

    goto :goto_0

    :cond_5
    new-instance p0, Lkotlinx/coroutines/channels/n;

    invoke-direct {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lvb/b;)V

    goto :goto_0

    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p1, p0, :cond_7

    move v1, v0

    :cond_7
    if-eqz v1, :cond_8

    new-instance p0, Lkotlinx/coroutines/channels/v;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/channels/v;-><init>(Lvb/b;)V

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lkotlinx/coroutines/channels/n;

    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p1, p2, :cond_a

    sget-object p2, Lkotlinx/coroutines/channels/p;->h0:Lkotlinx/coroutines/channels/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lkotlinx/coroutines/channels/o;->b:I

    :cond_a
    invoke-direct {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/n;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lvb/b;)V

    :goto_0
    return-object p0
.end method

.method public static c(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static d(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static e(BBB[CI)V
    .locals 2

    invoke-static {p1}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Li4/g;->r(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static final f(Ljava/lang/StringBuilder;Ljava/lang/Object;Lvb/b;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3
    return-void
.end method

.method public static g(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Li4/g;->q(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kotlin.jvm.functions.Function"

    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be cast to "

    invoke-static {p1, v0, p0}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Li4/g;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Li4/f;->H(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static final varargs h(Lkotlin/reflect/c;[Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/c;

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, Lkotlinx/serialization/d;

    const-class v6, Lkotlinx/serialization/g;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lkotlinx/serialization/internal/b0;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "canonicalName"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>"

    invoke-static {v0, v3}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Enum;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/b0;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    goto/16 :goto_17

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const/4 v7, 0x0

    const-class v8, Lkotlinx/serialization/e;

    if-eqz v1, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/g;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlinx/serialization/g;->with()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-static {v8}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v9

    invoke-static {v1, v9}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v7

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Lkotlinx/serialization/e;

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v9

    invoke-direct {v1, v9}, Lkotlinx/serialization/e;-><init>(Lkotlin/jvm/internal/j;)V

    :goto_2
    if-eqz v1, :cond_4

    goto/16 :goto_17

    :cond_4
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/c;

    :try_start_0
    const-string v1, "Companion"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-object v1, v7

    :goto_3
    const-string v9, "serializer"

    const-class v10, Lkotlinx/serialization/c;

    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    :try_start_1
    array-length v11, v0

    if-nez v11, :cond_6

    move v11, v4

    goto :goto_4

    :cond_6
    move v11, v3

    :goto_4
    if-eqz v11, :cond_7

    new-array v11, v3, [Ljava/lang/Class;

    goto :goto_6

    :cond_7
    array-length v11, v0

    new-array v12, v11, [Ljava/lang/Class;

    move v13, v3

    :goto_5
    if-ge v13, v11, :cond_8

    aput-object v10, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    move-object v11, v12

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    array-length v13, v11

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Class;

    invoke-virtual {v12, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v0

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/c;

    if-eqz v1, :cond_b

    check-cast v0, Lkotlinx/serialization/c;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-direct {v2, v1, v3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    :cond_a
    throw v0

    :catch_1
    :cond_b
    :goto_7
    move-object v1, v7

    :goto_8
    if-eqz v1, :cond_c

    goto/16 :goto_17

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "declaredFields"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    move v11, v3

    move v12, v11

    move-object v13, v7

    :goto_9
    const-string v14, "INSTANCE"

    if-ge v11, v1, :cond_10

    aget-object v15, v0, v11

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    move v4, v3

    :goto_a
    if-eqz v4, :cond_f

    if-eqz v12, :cond_e

    goto :goto_b

    :cond_e
    move-object v13, v15

    const/4 v12, 0x1

    :cond_f
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    if-nez v12, :cond_11

    :goto_b
    move-object v13, v7

    :cond_11
    if-nez v13, :cond_12

    move v1, v3

    move-object v0, v7

    goto/16 :goto_10

    :cond_12
    invoke-virtual {v13, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "methods"

    invoke-static {v1, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    move v11, v3

    move v12, v11

    move-object v13, v7

    :goto_c
    if-ge v11, v4, :cond_17

    aget-object v15, v1, v11

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const-string v3, "it.parameterTypes"

    invoke-static {v7, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v7

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v10}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_e

    :cond_14
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_16

    if-eqz v12, :cond_15

    goto :goto_f

    :cond_15
    move-object v13, v15

    const/4 v12, 0x1

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_c

    :cond_17
    if-nez v12, :cond_18

    :goto_f
    const/4 v13, 0x0

    :cond_18
    if-nez v13, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/serialization/c;

    if-eqz v3, :cond_1a

    check-cast v0, Lkotlinx/serialization/c;

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1b

    goto :goto_15

    :cond_1b
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    const-string v3, "declaredClasses"

    invoke-static {v0, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    move v4, v1

    move v7, v4

    const/4 v9, 0x0

    :goto_11
    if-ge v4, v3, :cond_1e

    aget-object v10, v0, v4

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "$serializer"

    invoke-static {v11, v12}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    if-eqz v7, :cond_1c

    goto :goto_12

    :cond_1c
    move-object v9, v10

    const/4 v7, 0x1

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1e
    if-nez v7, :cond_1f

    :goto_12
    const/4 v9, 0x0

    :cond_1f
    if-eqz v9, :cond_20

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_20

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    move-object v0, v3

    :goto_13
    instance-of v4, v0, Lkotlinx/serialization/c;

    if-eqz v4, :cond_21

    check-cast v0, Lkotlinx/serialization/c;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_14

    :catch_2
    const/4 v3, 0x0

    :catch_3
    :cond_21
    move-object v0, v3

    :goto_14
    if-eqz v0, :cond_22

    :goto_15
    move-object v1, v0

    goto :goto_17

    :cond_22
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_16

    :cond_23
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/g;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lkotlinx/serialization/g;->with()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v0

    invoke-static {v8}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v4

    invoke-static {v0, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_16
    const/4 v1, 0x1

    :cond_24
    if-eqz v1, :cond_25

    new-instance v0, Lkotlinx/serialization/e;

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/e;-><init>(Lkotlin/jvm/internal/j;)V

    goto :goto_15

    :cond_25
    move-object v1, v3

    :goto_17
    return-object v1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_0
    new-array v2, v1, [B

    new-array v3, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {v6, p0, v5}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {p0, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p0, Ljava/lang/String;

    if-nez p1, :cond_1

    move-object v5, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v5

    new-array v5, v2, [B

    :goto_1
    if-ge v4, v2, :cond_2

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {p0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, p0

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public static j(Lio/netty/buffer/ByteBuf;)[B
    .locals 3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_1

    return-object v2

    :cond_1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static final k(IILjava/lang/String;)Ljava/net/InetAddress;
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, -0x1

    move/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v8

    :goto_0
    const/4 v10, 0x0

    if-ge v6, v0, :cond_16

    if-ne v7, v2, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v11, v6, 0x2

    const/16 v12, 0xff

    const/4 v13, 0x4

    if-gt v11, v0, :cond_3

    const-string v14, "::"

    invoke-static {v1, v14, v6, v4}, Lkotlin/text/r;->M(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eq v8, v5, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v7, v7, 0x2

    if-ne v11, v0, :cond_2

    move v0, v2

    move v8, v7

    goto/16 :goto_c

    :cond_2
    move v8, v7

    move v9, v11

    goto/16 :goto_8

    :cond_3
    if-eqz v7, :cond_11

    const-string v11, ":"

    invoke-static {v1, v11, v6, v4}, Lkotlin/text/r;->M(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_4
    const-string v11, "."

    invoke-static {v1, v11, v6, v4}, Lkotlin/text/r;->M(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_1
    if-ge v9, v0, :cond_d

    if-ne v11, v2, :cond_5

    :goto_2
    move v0, v4

    goto :goto_6

    :cond_5
    if-eq v11, v6, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    :cond_7
    move v15, v4

    move v14, v9

    :goto_3
    if-ge v14, v0, :cond_b

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v2, 0x30

    if-lt v4, v2, :cond_b

    const/16 v5, 0x39

    if-le v4, v5, :cond_8

    goto :goto_4

    :cond_8
    if-nez v15, :cond_9

    if-eq v9, v14, :cond_9

    goto :goto_5

    :cond_9
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v4

    sub-int/2addr v15, v2

    if-le v15, v12, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_3

    :cond_b
    :goto_4
    sub-int v2, v14, v9

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v15

    aput-byte v4, v3, v11

    move v11, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_1

    :cond_d
    add-int/2addr v6, v13

    if-ne v11, v6, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_f

    return-object v10

    :cond_f
    add-int/lit8 v7, v7, 0x2

    const/16 v0, 0x10

    goto :goto_c

    :cond_10
    return-object v10

    :cond_11
    :goto_7
    move v9, v6

    :goto_8
    move v6, v9

    const/4 v2, 0x0

    :goto_9
    if-ge v6, v0, :cond_13

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lac/c;->o(C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    goto :goto_a

    :cond_12
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    sub-int v4, v6, v9

    if-eqz v4, :cond_15

    if-le v4, v13, :cond_14

    goto :goto_b

    :cond_14
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_15
    :goto_b
    return-object v10

    :cond_16
    move v0, v2

    :goto_c
    if-eq v7, v0, :cond_18

    const/4 v1, -0x1

    if-ne v8, v1, :cond_17

    return-object v10

    :cond_17
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    int-to-byte v0, v0

    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_18
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static l(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/w;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/w;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p0, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v3

    if-ge p0, v3, :cond_4

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    goto :goto_2

    :pswitch_1
    const-string v2, "\\f"

    goto :goto_2

    :pswitch_2
    const-string v2, "\\v"

    goto :goto_2

    :pswitch_3
    const-string v2, "\\n"

    goto :goto_2

    :pswitch_4
    const-string v2, "\\t"

    goto :goto_2

    :pswitch_5
    const-string v2, "\\b"

    goto :goto_2

    :pswitch_6
    const-string v2, "\\a"

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    :goto_1
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v2, "\\\\"

    goto :goto_2

    :cond_2
    const-string v2, "\\\'"

    goto :goto_2

    :cond_3
    const-string v2, "\\\""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li4/g;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object v0

    invoke-static {v0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lfc/e;->a:I

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_3

    :cond_3
    const-string v1, "0"

    :goto_3
    invoke-static {p0}, Lfc/e;->D(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "1"

    goto :goto_4

    :cond_4
    const-string v5, "0"

    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "1"

    goto :goto_5

    :cond_5
    const-string v6, "0"

    :goto_5
    invoke-static {p0}, Li9/f;->a(Landroid/content/Context;)Li9/f;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget v8, v7, Li9/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    if-lez v8, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    if-eqz v3, :cond_7

    const-string v3, "1"

    goto :goto_7

    :cond_7
    const-string v3, "0"

    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "usagestats"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result p0

    if-ne p0, v2, :cond_8

    const-string p0, "05"

    goto :goto_9

    :cond_8
    const/16 v2, 0xa

    if-eq p0, v2, :cond_a

    const/16 v2, 0x14

    if-eq p0, v2, :cond_a

    const/16 v2, 0x1e

    if-eq p0, v2, :cond_a

    const/16 v2, 0x28

    if-eq p0, v2, :cond_a

    const/16 v2, 0x2d

    if-eq p0, v2, :cond_a

    const/16 v2, 0x32

    if-ne p0, v2, :cond_9

    goto :goto_8

    :cond_9
    const-string p0, "-1"

    goto :goto_9

    :cond_a
    :goto_8
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0
.end method

.method public static p()I
    .locals 4

    const-string v0, "hidden_TYPE_NONE"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v3, v0, v2}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static q(ILjava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lkotlin/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    instance-of v0, p1, Lkotlin/jvm/internal/l;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/jvm/internal/l;

    invoke-interface {p1}, Lkotlin/jvm/internal/l;->getArity()I

    move-result p1

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lvb/a;

    if-eqz v0, :cond_1

    move p1, v1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lvb/b;

    if-eqz v0, :cond_2

    move p1, v2

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lvb/c;

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lvb/d;

    if-eqz v0, :cond_4

    const/4 p1, 0x3

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Lvb/e;

    if-eqz v0, :cond_5

    const/4 p1, 0x4

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Lvb/f;

    if-eqz v0, :cond_6

    const/4 p1, 0x5

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Lvb/g;

    if-eqz v0, :cond_7

    const/4 p1, 0x6

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Lvb/h;

    if-eqz v0, :cond_8

    const/4 p1, 0x7

    goto :goto_0

    :cond_8
    instance-of p1, p1, Lkotlin/jvm/internal/FunctionImpl;

    if-eqz p1, :cond_9

    const/16 p1, 0x8

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    const/16 p1, 0x9

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    const/16 p1, 0xa

    goto :goto_0

    :cond_b
    if-eqz p1, :cond_c

    const/16 p1, 0xb

    goto :goto_0

    :cond_c
    if-eqz p1, :cond_d

    const/16 p1, 0xc

    goto :goto_0

    :cond_d
    if-eqz p1, :cond_e

    const/16 p1, 0xd

    goto :goto_0

    :cond_e
    if-eqz p1, :cond_f

    const/16 p1, 0xe

    goto :goto_0

    :cond_f
    if-eqz p1, :cond_10

    const/16 p1, 0xf

    goto :goto_0

    :cond_10
    if-eqz p1, :cond_11

    const/16 p1, 0x10

    goto :goto_0

    :cond_11
    if-eqz p1, :cond_12

    const/16 p1, 0x11

    goto :goto_0

    :cond_12
    if-eqz p1, :cond_13

    const/16 p1, 0x12

    goto :goto_0

    :cond_13
    if-eqz p1, :cond_14

    const/16 p1, 0x13

    goto :goto_0

    :cond_14
    if-eqz p1, :cond_15

    const/16 p1, 0x14

    goto :goto_0

    :cond_15
    if-eqz p1, :cond_16

    const/16 p1, 0x15

    goto :goto_0

    :cond_16
    if-eqz p1, :cond_17

    const/16 p1, 0x16

    goto :goto_0

    :cond_17
    const/4 p1, -0x1

    :goto_0
    if-ne p1, p0, :cond_18

    move v1, v2

    :cond_18
    return v1
.end method

.method public static r(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, p0

    const/4 p0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, p0, v1}, Lv9/a;->k(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/coroutines/g;->getKey()Lkotlin/coroutines/h;

    move-result-object v0

    invoke-static {v0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    return-object p0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.sec.spp.push"

    const-string v1, "g"

    const-string v2, "type : spp"

    invoke-static {v1, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, p0, v0}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :catch_0
    const-string v3, "spp"

    if-nez v2, :cond_0

    invoke-static {}, Lm9/a;->T()Lm9/a;

    move-result-object v0

    const-string v1, "SMP_5002"

    const-string v2, "SPP is not installed"

    invoke-virtual {v0, p0, v3, v1, v2}, Lm9/a;->U(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lf9/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lm9/a;->T()Lm9/a;

    move-result-object v0

    const-string v1, "SMP_5001"

    const-string v2, "Spp AppId is not set. Should set SmpInitOptions.Option.SPP_APPID"

    invoke-virtual {v0, p0, v3, v1, v2}, Lm9/a;->U(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "reqType"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userdata"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/core/util/d;

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "key"

    const-string v3, "p_deviceId"

    invoke-direct {v1, v2, v3}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lp9/d;->m([Landroidx/core/util/d;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget v0, Ll9/b;->a:I

    const-string v0, "setAppFilterData"

    invoke-static {p0, v0}, Lva/n;->H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0, v3, p1}, Lva/n;->M(Landroid/content/Context;Lc9/b;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0
.end method

.method public static w(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/core/util/d;

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "data"

    invoke-direct {v1, v2, p1}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lp9/d;->m([Landroidx/core/util/d;)V

    sget v0, Ll9/b;->a:I

    const-string v0, "setAppFilterData"

    invoke-static {p0, v0}, Lva/n;->H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lva/n;->M(Landroid/content/Context;Lc9/b;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc9/b;->c()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lc9/b;->c()V

    throw p0
.end method

.method public static final x(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 1

    const-string v0, "completion"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p0}, Li4/g;->g(ILjava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final y(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lvb/c;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p2}, Li4/g;->g(ILjava/lang/Object;)V

    invoke-interface {p2, p1, p0}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/q;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    move-object p1, p2

    :goto_0
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->G(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/a0;->e:Lkotlinx/coroutines/internal/z;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Lkotlinx/coroutines/q;

    if-nez p1, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/a0;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_2
    check-cast p0, Lkotlinx/coroutines/q;

    iget-object p0, p0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-virtual {v0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to SPP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "g"

    invoke-static {v1, v0}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li4/g;->u(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
