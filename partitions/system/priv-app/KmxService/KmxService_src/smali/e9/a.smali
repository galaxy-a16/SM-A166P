.class public final Le9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/l2;
.implements Lkotlin/coroutines/h;
.implements Lokhttp3/b;
.implements Lcom/google/crypto/tink/shaded/protobuf/r;
.implements Lv5/a;
.implements Lr3/g;


# static fields
.field public static a:Le9/a;

.field public static final synthetic b:Le9/a;

.field public static final synthetic c:Le9/a;

.field public static final d:Le9/a;

.field public static final e:Le9/a;

.field public static final f:Le9/a;

.field public static final g:Le9/a;

.field public static final synthetic h:Le9/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->b:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->c:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->d:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->e:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->f:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->g:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/a;->h:Le9/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/google/android/gms/internal/measurement/o3;->f:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized d()Le9/a;
    .locals 2

    const-class v0, Le9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le9/a;->a:Le9/a;

    if-nez v1, :cond_0

    new-instance v1, Le9/a;

    invoke-direct {v1}, Le9/a;-><init>()V

    sput-object v1, Le9/a;->a:Le9/a;

    :cond_0
    sget-object v1, Le9/a;->a:Le9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(II[B)Z
    .locals 8

    :goto_0
    if-ge p0, p1, :cond_0

    aget-byte v0, p2, p0

    if-ltz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-lt p0, p1, :cond_2

    :goto_2
    move p0, v1

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v2, p0, 0x1

    aget-byte p0, p2, p0

    if-gez p0, :cond_11

    const/16 v3, -0x41

    const/4 v4, -0x1

    const/16 v5, -0x20

    if-ge p0, v5, :cond_3

    if-ge v2, p1, :cond_f

    const/16 v5, -0x3e

    if-lt p0, v5, :cond_e

    add-int/lit8 p0, v2, 0x1

    aget-byte v2, p2, v2

    if-le v2, v3, :cond_1

    goto/16 :goto_6

    :cond_3
    const/16 v6, -0x10

    if-ge p0, v6, :cond_7

    add-int/lit8 v6, p1, -0x1

    if-lt v2, v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p2, v2

    if-gt v2, v3, :cond_e

    const/16 v7, -0x60

    if-ne p0, v5, :cond_5

    if-lt v2, v7, :cond_e

    :cond_5
    const/16 v5, -0x13

    if-ne p0, v5, :cond_6

    if-ge v2, v7, :cond_e

    :cond_6
    add-int/lit8 p0, v6, 0x1

    aget-byte v2, p2, v6

    if-le v2, v3, :cond_1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, p1, -0x2

    if-lt v2, v5, :cond_d

    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/b6;->a:Le9/a;

    add-int/lit8 p0, v2, -0x1

    aget-byte p0, p2, p0

    sub-int/2addr p1, v2

    const/16 v5, -0xc

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_a

    const/4 v6, 0x2

    if-ne p1, v6, :cond_9

    aget-byte p1, p2, v2

    add-int/2addr v2, v0

    aget-byte p2, p2, v2

    if-gt p0, v5, :cond_e

    if-gt p1, v3, :cond_e

    if-le p2, v3, :cond_8

    goto :goto_5

    :cond_8
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    aget-byte p1, p2, v2

    if-gt p0, v5, :cond_e

    if-le p1, v3, :cond_b

    goto :goto_5

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    :goto_4
    xor-int/2addr p0, p1

    goto :goto_7

    :cond_c
    if-le p0, v5, :cond_f

    :goto_5
    goto :goto_6

    :cond_d
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p2, v2

    if-gt v2, v3, :cond_e

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v2, p0

    shr-int/lit8 p0, v2, 0x1e

    if-nez p0, :cond_e

    add-int/lit8 p0, v5, 0x1

    aget-byte v2, p2, v5

    if-gt v2, v3, :cond_e

    add-int/lit8 v2, p0, 0x1

    aget-byte p0, p2, p0

    if-le p0, v3, :cond_11

    :cond_e
    :goto_6
    move p0, v4

    :cond_f
    :goto_7
    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    return v0

    :cond_11
    move p0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)Lr3/o;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    sget p0, Lz2/b;->h:I

    if-eqz p1, :cond_0

    const-string p0, "google.messenger"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/o2;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/i6;->b:Lcom/google/android/gms/internal/measurement/i6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/k6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/k6;->m:Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o3;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
