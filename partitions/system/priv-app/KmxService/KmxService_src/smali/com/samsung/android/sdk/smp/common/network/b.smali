.class public final Lcom/samsung/android/sdk/smp/common/network/b;
.super Lw1/j;
.source "SourceFile"


# instance fields
.field public final t:Ljava/lang/String;

.field public final u:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLw1/i;Lw1/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lw1/j;-><init>(ILjava/lang/String;Lw1/i;Lw1/i;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "utf-8"

    aput-object p4, p1, p2

    const-string p2, "application/json; charset=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/network/b;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/common/network/b;->u:[B

    return-void
.end method


# virtual methods
.method public final d()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/b;->u:[B

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/b;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
