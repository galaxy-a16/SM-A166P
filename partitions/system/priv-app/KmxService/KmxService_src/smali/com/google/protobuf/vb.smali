.class public abstract Lcom/google/protobuf/vb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public abstract c(J[BJJ)V
.end method

.method public abstract d(JLjava/lang/Object;)Z
.end method

.method public abstract e(J)B
.end method

.method public abstract f(JLjava/lang/Object;)B
.end method

.method public abstract g(JLjava/lang/Object;)D
.end method

.method public abstract h(JLjava/lang/Object;)F
.end method

.method public final i(Ljava/lang/Object;J)I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public abstract j(J)J
.end method

.method public final k(Ljava/lang/Object;J)J
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final l(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/reflect/Field;)J
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract n(Ljava/lang/Object;JZ)V
.end method

.method public abstract o(Ljava/lang/Object;JB)V
.end method

.method public abstract p(Ljava/lang/Object;JD)V
.end method

.method public abstract q(Ljava/lang/Object;JF)V
.end method

.method public final r(IJLjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4, p2, p3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final s(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final t(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public u()Z
    .locals 9

    const-class v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    if-nez p0, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v1, v5, v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v2

    aput-object v6, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getLong"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    aput-object v6, v7, v4

    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v2

    aput-object v6, v7, v4

    aput-object v6, v7, v3

    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    aput-object v6, v7, v4

    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v1, v5, v2

    aput-object v6, v5, v4

    aput-object v1, v5, v3

    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/google/protobuf/wb;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method public abstract v()Z
.end method
