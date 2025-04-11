.class public final Lcom/google/protobuf/ub;
.super Lcom/google/protobuf/vb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/vb;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(J[BJJ)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    sget-wide v2, Lcom/google/protobuf/wb;->f:J

    add-long v5, v2, p4

    move-wide v2, p1

    move-object v4, p3

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public final d(JLjava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public final e(J)B
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method public final f(JLjava/lang/Object;)B
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public final g(JLjava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final h(JLjava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public final j(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final n(Ljava/lang/Object;JZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final o(Ljava/lang/Object;JB)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final p(Ljava/lang/Object;JD)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public final q(Ljava/lang/Object;JF)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public final u()Z
    .locals 9

    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/protobuf/vb;->u()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getByte"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putByte"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getBoolean"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putBoolean"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getFloat"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putFloat"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getDouble"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putDouble"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v2

    aput-object v5, v4, v6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v3

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/google/protobuf/wb;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method public final v()Z
    .locals 10

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    iget-object p0, p0, Lcom/google/protobuf/vb;->a:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "objectFieldOffset"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/reflect/Field;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v2, v7, v5

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/protobuf/wb;->e()Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-static {v6}, Lcom/google/protobuf/wb;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-nez v6, :cond_2

    return v5

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v6, "getByte"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v8, v6, v5

    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v8, v6, v5

    aput-object v8, v6, v4

    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v8, v6, v5

    aput-object v8, v6, v4

    aput-object v8, v6, v3

    invoke-virtual {p0, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v2, v6, v5

    aput-object v8, v6, v4

    aput-object v2, v6, v3

    aput-object v8, v6, v1

    const/4 v1, 0x4

    aput-object v8, v6, v1

    invoke-virtual {p0, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v4

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/google/protobuf/wb;->a(Ljava/lang/Throwable;)V

    return v5
.end method
