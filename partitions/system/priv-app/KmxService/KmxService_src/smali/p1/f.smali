.class public abstract Lp1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb/d;
.implements Lzb/b;


# static fields
.field public static final a:[[Ljava/lang/String;

.field public static final b:[[Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;

.field public static final d:[[Ljava/lang/String;

.field public static final e:Lcom/google/gson/internal/c;

.field public static final synthetic f:I

.field public static final g:[[F

.field public static final h:[[F

.field public static final i:[F

.field public static final j:[[F


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "subContentText"

    const-string v3, "contentTitle"

    const-string v4, "contentText"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-array v2, v5, [Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v2, v1, v7

    sput-object v1, Lp1/f;->a:[[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v2, v1, [[Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v8, v2, v5

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sput-object v2, Lp1/f;->b:[[Ljava/lang/String;

    new-array v2, v0, [[Ljava/lang/String;

    const-string v3, "smallIcon"

    const-string v8, "largeIcon"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    const-string v9, "banner"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    const-string v9, "flip_f"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v7

    sput-object v2, Lp1/f;->c:[[Ljava/lang/String;

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "bigPicture"

    filled-new-array {v3, v8, v2}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    filled-new-array {v3, v8, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "flip_e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    sput-object v1, Lp1/f;->d:[[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/internal/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lp1/f;->e:Lcom/google/gson/internal/c;

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lp1/f;->g:[[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    sput-object v1, Lp1/f;->h:[[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lp1/f;->i:[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    aput-object v0, v1, v5

    sput-object v1, Lp1/f;->j:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_2
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_6
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_7
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    :array_8
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3f371759    # 0.7152f
        0x3d93dd98    # 0.0722f
    .end array-data

    :array_9
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Lp1/q;)Lp1/j;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp1/j;

    iget-object v1, p0, Lp1/q;->a:Ljava/lang/String;

    iget p0, p0, Lp1/q;->t:I

    invoke-direct {v0, v1, p0}, Lp1/j;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static D(I)F
    .locals 6

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p0, v0

    :goto_0
    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v0

    float-to-double v2, p0

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    goto :goto_0
.end method

.method public static M(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "f"

    const-string v1, "queryValueFromSps error. "

    const-string v2, "content://com.sec.spp.smpc.provider/"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_1
    :goto_0
    :try_start_2
    const-string p1, "queryValueFromSps error. query fail"

    invoke-static {v0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static N(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "f"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDeviceIdAppFilter. deviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1}, Li4/g;->v(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    const-string p1, "random_smpid_generated"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    move-exception p0

    const-string p1, "f"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDeviceIdAppFilter error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static P()F
    .locals 4

    const/high16 v0, 0x42480000    # 50.0f

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public B(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract F()V
.end method

.method public G(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public abstract H(I)V
.end method

.method public abstract I(Landroid/view/View;II)V
.end method

.method public abstract J(Landroid/view/View;FF)V
.end method

.method public abstract K(Landroidx/concurrent/futures/f;Landroidx/concurrent/futures/f;)V
.end method

.method public abstract L(Landroidx/concurrent/futures/f;Ljava/lang/Thread;)V
.end method

.method public abstract O(Landroid/view/View;I)Z
.end method

.method public abstract e(D)V
.end method

.method public abstract f(S)V
.end method

.method public abstract g(B)V
.end method

.method public abstract h(Z)V
.end method

.method public abstract j(Landroidx/concurrent/futures/g;Landroidx/concurrent/futures/c;Landroidx/concurrent/futures/c;)Z
.end method

.method public abstract k(I)V
.end method

.method public abstract l(Lkotlinx/serialization/descriptors/g;)Lzb/d;
.end method

.method public abstract m(Lkotlinx/serialization/c;Ljava/lang/Object;)V
.end method

.method public abstract n(F)V
.end method

.method public abstract o(J)V
.end method

.method public abstract p(C)V
.end method

.method public abstract r(Ljava/lang/String;)V
.end method

.method public abstract s(Landroidx/concurrent/futures/g;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract t(Landroidx/concurrent/futures/g;Landroidx/concurrent/futures/f;Landroidx/concurrent/futures/f;)Z
.end method

.method public abstract u(Landroid/view/View;I)I
.end method

.method public abstract v(Landroid/view/View;I)I
.end method

.method public abstract w(Lkotlinx/serialization/descriptors/g;I)V
.end method

.method public x(Lkotlinx/serialization/internal/c1;I)Lzb/d;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/o0;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1/f;->l(Lkotlinx/serialization/descriptors/g;)Lzb/d;

    move-result-object p0

    return-object p0
.end method

.method public y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {p0, p3, p4}, Lp1/f;->m(Lkotlinx/serialization/c;Ljava/lang/Object;)V

    return-void
.end method

.method public z(Lkotlinx/serialization/descriptors/g;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {p0, p3}, Lp1/f;->r(Ljava/lang/String;)V

    return-void
.end method
