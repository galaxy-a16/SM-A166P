.class public abstract Lcom/google/crypto/tink/shaded/protobuf/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public abstract c(J[BJ)V
.end method

.method public abstract d(J)B
.end method

.method public abstract e(JLjava/lang/Object;)B
.end method

.method public final f(Ljava/lang/Object;J)I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public abstract g(J)J
.end method

.method public final h(Ljava/lang/Object;J)J
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final i(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/reflect/Field;)J
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method
