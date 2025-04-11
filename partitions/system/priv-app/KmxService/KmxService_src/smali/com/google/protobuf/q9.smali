.class public final Lcom/google/protobuf/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/protobuf/q9;


# instance fields
.field public final a:Lcom/google/protobuf/w7;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/q9;

    invoke-direct {v0}, Lcom/google/protobuf/q9;-><init>()V

    sput-object v0, Lcom/google/protobuf/q9;->c:Lcom/google/protobuf/q9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/q9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/protobuf/w7;

    invoke-direct {v0}, Lcom/google/protobuf/w7;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/q9;->a:Lcom/google/protobuf/w7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/protobuf/z9;
    .locals 8

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/q9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z9;

    if-nez v1, :cond_8

    iget-object p0, p0, Lcom/google/protobuf/q9;->a:Lcom/google/protobuf/w7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/protobuf/b6;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/w7;->a:Lcom/google/protobuf/p8;

    invoke-interface {p0, p1}, Lcom/google/protobuf/p8;->a(Ljava/lang/Class;)Lcom/google/protobuf/o8;

    move-result-object v2

    move-object p0, v2

    check-cast p0, Lcom/google/protobuf/ta;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Protobuf runtime is not correctly loaded."

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    sget-object p0, Lcom/google/protobuf/j9;->b:Lcom/google/protobuf/i9;

    sget-object v1, Lcom/google/protobuf/p7;->b:Lcom/google/protobuf/o7;

    sget-object v3, Lcom/google/protobuf/aa;->d:Lcom/google/protobuf/qb;

    sget-object v6, Lcom/google/protobuf/x4;->a:Lcom/google/protobuf/w4;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/google/protobuf/j9;->b:Lcom/google/protobuf/i9;

    sget-object v1, Lcom/google/protobuf/p7;->b:Lcom/google/protobuf/o7;

    sget-object v3, Lcom/google/protobuf/aa;->d:Lcom/google/protobuf/qb;

    :goto_2
    sget-object v4, Lcom/google/protobuf/l8;->b:Lcom/google/protobuf/k8;

    move-object v5, v3

    move-object v7, v4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    if-eqz v4, :cond_7

    sget-object p0, Lcom/google/protobuf/j9;->a:Lcom/google/protobuf/g9;

    sget-object v1, Lcom/google/protobuf/p7;->a:Lcom/google/protobuf/n7;

    sget-object v4, Lcom/google/protobuf/aa;->b:Lcom/google/protobuf/kb;

    sget-object v6, Lcom/google/protobuf/x4;->b:Lcom/google/protobuf/u4;

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object p0, Lcom/google/protobuf/j9;->a:Lcom/google/protobuf/g9;

    sget-object v1, Lcom/google/protobuf/p7;->a:Lcom/google/protobuf/n7;

    sget-object v4, Lcom/google/protobuf/aa;->c:Lcom/google/protobuf/kb;

    :goto_4
    sget-object v3, Lcom/google/protobuf/l8;->a:Lcom/google/protobuf/i8;

    move-object v7, v3

    move-object v5, v4

    :goto_5
    move-object v3, p0

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/y8;->s(Lcom/google/protobuf/o8;Lcom/google/protobuf/g9;Lcom/google/protobuf/p7;Lcom/google/protobuf/kb;Lcom/google/protobuf/u4;Lcom/google/protobuf/i8;)Lcom/google/protobuf/y8;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z9;

    if-eqz p0, :cond_8

    move-object v1, p0

    :cond_8
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
