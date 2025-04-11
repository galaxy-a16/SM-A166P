.class public abstract Lcom/google/android/gms/internal/measurement/a6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/measurement/y5;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-class v0, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a6;->k()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/a6;->a:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v3;->a()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/a6;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/a6;->t(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/a6;->t(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/measurement/y5;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/measurement/y5;

    invoke-direct {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    const-string v1, "getLong"

    const-string v4, "objectFieldOffset"

    const-class v7, Ljava/lang/reflect/Field;

    const/4 v8, 0x2

    const-class v9, Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/z5;->a:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v10, v5, [Ljava/lang/Class;

    aput-object v7, v10, v6

    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v9, v10, v6

    aput-object v2, v10, v5

    invoke-virtual {v3, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a6;->b()Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/a6;->l(Ljava/lang/Throwable;)V

    :goto_2
    move v2, v6

    :goto_3
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/a6;->d:Z

    sget-object v2, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/z5;->a:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v0, v3, v6

    const-string v4, "arrayBaseOffset"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v0, v3, v6

    const-string v0, "arrayIndexScale"

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v8, [Ljava/lang/Class;

    aput-object v9, v0, v6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    const-string v4, "getInt"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v9, v4, v6

    aput-object v3, v4, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v8

    const-string v7, "putInt"

    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v9, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v9, v1, v6

    aput-object v3, v1, v5

    aput-object v3, v1, v8

    const-string v4, "putLong"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v8, [Ljava/lang/Class;

    aput-object v9, v1, v6

    aput-object v3, v1, v5

    const-string v4, "getObject"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v9, v0, v6

    aput-object v3, v0, v5

    aput-object v9, v0, v8

    const-string v1, "putObject"

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v5

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->l(Ljava/lang/Throwable;)V

    :goto_4
    move v0, v6

    :goto_5
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/a6;->e:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/a6;->f:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->v(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a6;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/z5;->e(Ljava/lang/reflect/Field;)V

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_6

    :cond_7
    move v5, v6

    :goto_6
    sput-boolean v5, Lcom/google/android/gms/internal/measurement/a6;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/a6;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/z5;->b(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/reflect/Field;
    .locals 4

    const-class v0, Ljava/nio/Buffer;

    sget v1, Lcom/google/android/gms/internal/measurement/v3;->a:I

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    return-object v0

    :cond_0
    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/z5;->g(IJLjava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/z5;->g(IJLjava/lang/Object;)V

    return-void
.end method

.method public static e(JLjava/lang/Object;)D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->d(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->d(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    :goto_1
    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static f(JLjava/lang/Object;)F
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->d(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->f(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/x5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/x5;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static bridge synthetic l(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/measurement/a6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/Object;JZ)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v0, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    sget-boolean v1, Lcom/google/android/gms/internal/measurement/a6;->g:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->d(Ljava/lang/Object;JB)V

    goto :goto_1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->d(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static n([BJB)V
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/measurement/a6;->f:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:I

    sget-boolean p2, Lcom/google/android/gms/internal/measurement/a6;->g:Z

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_0
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->d(Ljava/lang/Object;JB)V

    goto :goto_1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->d(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/z5;->h(Ljava/lang/Object;JJ)V

    goto :goto_1

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/z5;->h(Ljava/lang/Object;JJ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Ljava/lang/Object;JF)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-virtual {v0, p3, p1, p2, p0}, Lcom/google/android/gms/internal/measurement/z5;->g(IJLjava/lang/Object;)V

    goto :goto_1

    :goto_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-virtual {v0, p3, p1, p2, p0}, Lcom/google/android/gms/internal/measurement/z5;->g(IJLjava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static q(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->g(IJLjava/lang/Object;)V

    return-void
.end method

.method public static r(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/z5;->h(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static s(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static t(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/measurement/v3;->a:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/a6;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-string v7, "peekByte"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v2, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v1
.end method

.method public static u(JLjava/lang/Object;)Z
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-wide/16 v5, 0x3

    const-wide/16 v7, -0x4

    sget-boolean v9, Lcom/google/android/gms/internal/measurement/a6;->g:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v9, :cond_1

    and-long/2addr v7, p0

    invoke-virtual {v0, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    and-long/2addr p0, v5

    shl-long/2addr p0, v4

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    and-long/2addr v7, p0

    invoke-virtual {v0, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p2

    and-long/2addr p0, v5

    shl-long/2addr p0, v4

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    goto :goto_1

    :goto_0
    if-eqz v9, :cond_2

    and-long/2addr v7, p0

    invoke-virtual {v0, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    and-long/2addr p0, v5

    shl-long/2addr p0, v4

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    and-long/2addr v7, p0

    invoke-virtual {v0, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/z5;->c(JLjava/lang/Object;)I

    move-result p2

    and-long/2addr p0, v5

    shl-long/2addr p0, v4

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/a6;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/a6;->c:Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/z5;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
