.class public final synthetic La3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:La3/n;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La3/l;->a:Z

    iput-object p2, p0, La3/l;->b:Ljava/lang/String;

    iput-object p3, p0, La3/l;->c:La3/n;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    iget-boolean v1, p0, La3/l;->a:Z

    iget-object v2, p0, La3/l;->b:Ljava/lang/String;

    iget-object p0, p0, La3/l;->c:La3/n;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, v3}, La3/r;->a(Ljava/lang/String;La3/n;ZZ)La3/x;

    move-result-object v4

    iget-boolean v4, v4, La3/x;->a:Z

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eq v0, v4, :cond_1

    const-string v4, "not allowed"

    goto :goto_1

    :cond_1
    const-string v4, "debug cert rejected"

    :goto_1
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v2, v5, v0

    const-string v0, "SHA-256"

    move v2, v3

    :goto_2
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :cond_3
    invoke-static {v6}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, La3/n;->d()[B

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    array-length v0, p0

    add-int/2addr v0, v0

    new-array v0, v0, [C

    move v2, v3

    :goto_3
    array-length v6, p0

    if-ge v3, v6, :cond_4

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    sget-object v8, Lfc/c;->j:[C

    ushr-int/lit8 v9, v6, 0x4

    aget-char v9, v8, v9

    aput-char v9, v0, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    aput-char v6, v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    aput-object p0, v5, v4

    const/4 p0, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, p0

    const-string p0, "12451000.false"

    const/4 v0, 0x4

    aput-object p0, v5, v0

    const-string p0, "%s: pkg=%s, sha256=%s, atk=%s, ver=%s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
