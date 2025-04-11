.class public final Lcom/google/crypto/tink/shaded/protobuf/b0;
.super Lcom/google/crypto/tink/shaded/protobuf/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/c0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(J[BJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    sget-wide v2, Lcom/google/crypto/tink/shaded/protobuf/d0;->g:J

    const-wide/16 v4, 0x0

    add-long v5, v2, v4

    move-wide v2, p1

    move-object v4, p3

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public final d(J)B
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method public final e(JLjava/lang/Object;)B
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public final g(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/c0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method
