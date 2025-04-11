.class public Lf6/f;
.super Lu7/a;
.source "SourceFile"


# static fields
.field public static final b:Lf6/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf6/f;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Lf6/f;-><init>([B)V

    sput-object v0, Lf6/f;->b:Lf6/f;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lu7/a;-><init>([B)V

    return-void
.end method

.method public static d(II[B)Lf6/f;
    .locals 3

    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-byte v0, p2, p0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Lf6/f;->b:Lf6/f;

    return-object p0

    :cond_1
    new-instance v0, Lf6/f;

    invoke-static {p2, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lf6/f;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 3

    invoke-virtual {p0}, Lu7/a;->b()I

    move-result v0

    invoke-virtual {p0}, Lu7/a;->a()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lu7/a;->a:[B

    aget-byte p0, p0, v0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public e()Lf6/f;
    .locals 0

    return-object p0
.end method
