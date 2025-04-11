.class public abstract Lfc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I

.field public static b:Lcom/google/protobuf/b8;


# direct methods
.method public static A(Landroid/content/Context;I)Z
    .locals 6

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "notification("

    const-string v4, "e"

    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") visible : true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") visible : false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.device_category_vst"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static C(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0, p1}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isPkgInstalled error. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "e"

    const-string v1, "power save mode on"

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public static final E(Lkc/e;)Z
    .locals 8

    const-string v0, "$this$isProbablyUtf8"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lkc/e;

    invoke-direct {v7}, Lkc/e;-><init>()V

    iget-wide v1, p0, Lkc/e;->b:J

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lkc/e;->i(Lkc/e;JJ)V

    move p0, v0

    :goto_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    invoke-virtual {v7}, Lkc/e;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lkc/e;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.sec.spp.push"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static G()Z
    .locals 4

    const-string v0, "allArea"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_3

    const/16 v2, 0x67

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lfc/e;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lfc/e;->w()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lfc/e;->w()Z

    move-result v0

    return v0
.end method

.method public static H()Z
    .locals 1

    sget-boolean v0, Lfc/g;->d:Z

    return v0
.end method

.method public static I([B)J
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-gez v1, :cond_11

    const/16 v3, -0x20

    const-wide/high16 v4, -0x8000000000000000L

    const/16 v6, -0x41

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    if-ge v1, v3, :cond_4

    if-ne v2, v0, :cond_2

    int-to-long v0, v2

    add-long/2addr v0, v7

    return-wide v0

    :cond_2
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_3

    int-to-long v0, v2

    add-long/2addr v0, v4

    return-wide v0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v6, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, v7

    return-wide v0

    :cond_4
    const/16 v9, -0x10

    if-ge v1, v9, :cond_9

    add-int/lit8 v9, v2, 0x1

    if-lt v9, v0, :cond_5

    int-to-long v0, v2

    add-long/2addr v0, v7

    return-wide v0

    :cond_5
    aget-byte v2, p0, v2

    if-le v2, v6, :cond_6

    int-to-long v0, v9

    add-long/2addr v0, v7

    return-wide v0

    :cond_6
    const/16 v10, -0x60

    if-ne v1, v3, :cond_7

    if-ge v2, v10, :cond_7

    int-to-long v0, v9

    add-long/2addr v0, v4

    return-wide v0

    :cond_7
    const/16 v3, -0x13

    if-ne v1, v3, :cond_8

    if-lt v2, v10, :cond_8

    int-to-long v0, v9

    const-wide/high16 v2, -0x2000000000000000L    # -2.6815615859885194E154

    add-long/2addr v0, v2

    return-wide v0

    :cond_8
    add-int/lit8 v1, v9, 0x1

    aget-byte v2, p0, v9

    if-le v2, v6, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, v7

    return-wide v0

    :cond_9
    add-int/lit8 v3, v2, 0x2

    if-lt v3, v0, :cond_a

    int-to-long v0, v2

    add-long/2addr v0, v7

    return-wide v0

    :cond_a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v6, :cond_b

    int-to-long v0, v3

    add-long/2addr v0, v7

    return-wide v0

    :cond_b
    if-ne v1, v9, :cond_c

    const/16 v9, -0x70

    if-ge v2, v9, :cond_c

    int-to-long v0, v3

    add-long/2addr v0, v4

    return-wide v0

    :cond_c
    const/16 v4, -0xc

    if-ne v1, v4, :cond_d

    const/16 v5, -0x71

    if-gt v2, v5, :cond_e

    :cond_d
    if-le v1, v4, :cond_f

    :cond_e
    int-to-long v0, v3

    const-wide/high16 v2, -0x1000000000000000L    # -3.105036184601418E231

    add-long/2addr v0, v2

    return-wide v0

    :cond_f
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p0, v3

    if-le v2, v6, :cond_10

    int-to-long v0, v1

    add-long/2addr v0, v7

    return-wide v0

    :cond_10
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-le v1, v6, :cond_11

    int-to-long v0, v2

    add-long/2addr v0, v7

    return-wide v0

    :cond_11
    move v1, v2

    goto/16 :goto_0
.end method

.method public static final J([Ljava/lang/Object;)Landroidx/core/view/c1;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/view/c1;

    invoke-direct {v0, p0}, Landroidx/core/view/c1;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static K(Landroid/content/Context;)Lv1/i;
    .locals 6

    new-instance v0, Lva/f;

    new-instance v1, Lw1/g;

    invoke-direct {v1}, Lw1/g;-><init>()V

    invoke-direct {v0, v1}, Lva/f;-><init>(Lw1/g;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lp1/e;

    invoke-direct {v1, p0}, Lp1/e;-><init>(Landroid/content/Context;)V

    new-instance p0, Lv1/i;

    new-instance v2, Lw1/d;

    invoke-direct {v2, v1}, Lw1/d;-><init>(Lp1/e;)V

    invoke-direct {p0, v2, v0}, Lv1/i;-><init>(Lw1/d;Lva/f;)V

    iget-object v0, p0, Lv1/i;->i:Lv1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv1/b;->b()V

    :cond_0
    iget-object v0, p0, Lv1/i;->h:[Lv1/e;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lv1/e;->e:Z

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lv1/b;

    iget-object v1, p0, Lv1/i;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lv1/i;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lv1/i;->e:Lw1/d;

    iget-object v5, p0, Lv1/i;->g:Lf9/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lv1/b;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Lw1/d;Lf9/b;)V

    iput-object v0, p0, Lv1/i;->i:Lv1/b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lv1/i;->h:[Lv1/e;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    new-instance v0, Lv1/e;

    iget-object v1, p0, Lv1/i;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lv1/i;->f:Lva/f;

    iget-object v4, p0, Lv1/i;->e:Lw1/d;

    iget-object v5, p0, Lv1/i;->g:Lf9/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lv1/e;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Lva/f;Lw1/d;Lf9/b;)V

    iget-object v1, p0, Lv1/i;->h:[Lv1/e;

    aput-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static final L(Ljava/lang/String;)J
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "+-"

    invoke-static {v4, v3}, Lkotlin/text/s;->O(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sub-int/2addr v0, v3

    const/16 v4, 0x10

    if-le v0, v4, :cond_5

    new-instance v0, Lxb/f;

    invoke-static {p0}, Lkotlin/text/s;->Q(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lxb/f;-><init>(II)V

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lxb/d;->b()Lxb/e;

    move-result-object v0

    :cond_2
    iget-boolean v3, v0, Lxb/e;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lkotlin/collections/w;->a()I

    move-result v3

    new-instance v4, Lxb/c;

    const/16 v5, 0x30

    const/16 v6, 0x39

    invoke-direct {v4, v5, v6}, Lxb/c;-><init>(CC)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lxb/c;->b(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_3

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    :goto_3
    return-wide v0

    :cond_5
    const-string v0, "+"

    invoke-static {p0, v0, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1, p0}, Lkotlin/text/t;->h0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final M(Ljava/lang/Object;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final N(Lkotlinx/serialization/modules/b;Lkotlin/reflect/v;Z)Lkotlinx/serialization/c;
    .locals 8

    invoke-static {p1}, Lv9/a;->z(Lkotlin/reflect/v;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/q;

    iget v1, p1, Lkotlin/jvm/internal/q;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    iget-object p1, p1, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    invoke-static {v3, p1}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v3, "clazz"

    if-eqz p1, :cond_3

    sget-object p1, Lkotlinx/serialization/h;->a:Lkotlinx/serialization/internal/r;

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_2

    sget-object p1, Lkotlinx/serialization/h;->a:Lkotlinx/serialization/internal/r;

    invoke-virtual {p1, v0}, Lkotlinx/serialization/internal/r;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/c;

    move-result-object p1

    if-eqz p1, :cond_1

    goto/16 :goto_a

    :cond_1
    move-object p1, v4

    goto/16 :goto_a

    :cond_2
    sget-object p1, Lkotlinx/serialization/h;->b:Lkotlinx/serialization/internal/r;

    invoke-virtual {p1, v0}, Lkotlinx/serialization/internal/r;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/c;

    move-result-object p1

    goto/16 :goto_a

    :cond_3
    sget-object p1, Lkotlinx/serialization/h;->a:Lkotlinx/serialization/internal/r;

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_4

    sget-object p1, Lkotlinx/serialization/h;->c:Lkotlinx/serialization/internal/s;

    goto :goto_1

    :cond_4
    sget-object p1, Lkotlinx/serialization/h;->d:Lkotlinx/serialization/internal/s;

    :goto_1
    iget v3, p1, Lkotlinx/serialization/internal/s;->a:I

    iget-object v5, p1, Lkotlinx/serialization/internal/s;->b:Lvb/c;

    const-string v6, "serializers.getOrPut(typ\u2026 { producer() }\n        }"

    iget-object p1, p1, Lkotlinx/serialization/internal/s;->c:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/internal/c;

    invoke-static {v0}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/internal/z0;

    iget-object p1, p1, Lkotlinx/serialization/internal/z0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    :try_start_0
    invoke-interface {v5, v0, v1}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/c;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, p1

    :cond_6
    :goto_3
    invoke-static {v3, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :goto_4
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    new-instance v7, Lkotlinx/serialization/internal/z0;

    invoke-direct {v7}, Lkotlinx/serialization/internal/z0;-><init>()V

    invoke-interface {p1, v3, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move-object v7, p1

    :cond_8
    :goto_5
    check-cast v7, Lkotlinx/serialization/internal/z0;

    iget-object p1, v7, Lkotlinx/serialization/internal/z0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    :try_start_1
    invoke-interface {v5, v0, v1}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/c;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v3

    invoke-static {v3}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    move-object v3, p1

    :cond_a
    :goto_7
    invoke-static {v3, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :goto_8
    if-eqz p2, :cond_b

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object p1, v4

    goto :goto_9

    :cond_b
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_12

    :cond_c
    :goto_9
    check-cast p1, Lkotlinx/serialization/c;

    :goto_a
    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "kClass"

    invoke-static {v0, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "typeArgumentsSerializers"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/modules/b;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    invoke-static {p0, v1, p2}, Lv9/a;->a0(Lkotlinx/serialization/modules/b;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v4

    :cond_f
    invoke-static {v0, v1, p1}, Lv9/a;->U(Lkotlin/reflect/c;Ljava/util/List;Ljava/util/ArrayList;)Lkotlinx/serialization/c;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p0, p0, Lkotlinx/serialization/modules/b;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    :goto_b
    move-object p1, v4

    :cond_10
    if-eqz p1, :cond_12

    if-eqz v2, :cond_11

    invoke-static {p1}, Lp9/d;->M(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v4

    goto :goto_c

    :cond_11
    move-object v4, p1

    :cond_12
    :goto_c
    return-object v4

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final O(DLkotlin/time/DurationUnit;)J
    .locals 9

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lp9/d;->s(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-string v4, "Cannot round NaN value."

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    new-instance v2, Lxb/i;

    const-wide v5, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v7, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v2, v5, v6, v7, v8}, Lxb/i;-><init>(JJ)V

    invoke-virtual {v2, v0, v1}, Lxb/i;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    shl-long p0, v0, v3

    sget p2, Lyb/a;->d:I

    sget p2, Lyb/b;->a:I

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lp9/d;->s(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lfc/e;->h(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final P(JLkotlin/time/DurationUnit;)J
    .locals 7

    const-string v0, "unit"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-string v1, "sourceUnit"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    new-instance v3, Lxb/i;

    neg-long v4, v1

    invoke-direct {v3, v4, v5, v1, v2}, Lxb/i;-><init>(JJ)V

    invoke-virtual {v3, p0, p1}, Lxb/i;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    const/4 p2, 0x1

    shl-long/2addr p0, p2

    sget p2, Lyb/a;->d:I

    sget p2, Lyb/b;->a:I

    return-wide p0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-string v1, "targetUnit"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lp9/d;->q(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lfc/e;->g(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic a(ILjava/util/concurrent/Executor;)Lio/netty/channel/epoll/EpollEventLoopGroup;
    .locals 1

    new-instance v0, Lio/netty/channel/epoll/EpollEventLoopGroup;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/epoll/EpollEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static synthetic b()Lio/netty/channel/epoll/EpollSocketChannel;
    .locals 1

    new-instance v0, Lio/netty/channel/epoll/EpollSocketChannel;

    invoke-direct {v0}, Lio/netty/channel/epoll/EpollSocketChannel;-><init>()V

    return-object v0
.end method

.method public static final c(Ljava/lang/String;)J
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    sget v1, Lyb/a;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5, v1}, Li4/f;->r(CCZ)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-le v0, v2, :cond_19

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_18

    add-int/2addr v2, v3

    if-eq v2, v0, :cond_17

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v1

    :goto_5
    if-ge v2, v0, :cond_15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_6

    if-nez v8, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    move v9, v2

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    new-instance v11, Lxb/c;

    const/16 v12, 0x30

    const/16 v13, 0x39

    invoke-direct {v11, v12, v13}, Lxb/c;-><init>(CC)V

    invoke-virtual {v11, v10}, Lxb/c;->b(C)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "+-."

    invoke-static {v11, v10}, Lkotlin/text/s;->O(Ljava/lang/CharSequence;C)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move v10, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v10, v3

    :goto_8
    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_a

    move v11, v3

    goto :goto_9

    :cond_a
    move v11, v1

    :goto_9
    if-nez v11, :cond_14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v2

    if-ltz v11, :cond_13

    invoke-static {p0}, Lkotlin/text/s;->Q(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v11, v2, :cond_13

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v11, v11, 0x1

    if-nez v8, :cond_c

    const/16 v12, 0x44

    if-ne v2, v12, :cond_b

    sget-object v2, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    goto :goto_a

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid or unsupported duration ISO non-time unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const/16 v12, 0x48

    if-ne v2, v12, :cond_d

    sget-object v2, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    goto :goto_a

    :cond_d
    const/16 v12, 0x4d

    if-ne v2, v12, :cond_e

    sget-object v2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    goto :goto_a

    :cond_e
    const/16 v12, 0x53

    if-ne v2, v12, :cond_12

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    :goto_a
    if-eqz v7, :cond_10

    invoke-virtual {v7, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_f

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected order of duration components"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_b
    const/16 v7, 0x2e

    const/4 v12, 0x6

    invoke-static {v9, v7, v1, v1, v12}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    sget-object v12, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    if-ne v2, v12, :cond_11

    if-lez v7, :cond_11

    invoke-virtual {v9, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lfc/e;->L(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v2}, Lfc/e;->P(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Lyb/a;->f(JJ)J

    move-result-wide v5

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "this as java.lang.String).substring(startIndex)"

    invoke-static {v7, v9}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10, v2}, Lfc/e;->O(DLkotlin/time/DurationUnit;)J

    move-result-wide v9

    goto :goto_c

    :cond_11
    invoke-static {v9}, Lfc/e;->L(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10, v2}, Lfc/e;->P(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    :goto_c
    invoke-static {v5, v6, v9, v10}, Lyb/a;->f(JJ)J

    move-result-wide v5

    move-object v7, v2

    move v2, v11

    goto/16 :goto_5

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid duration ISO time unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing unit for value "

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_15
    if-eqz v4, :cond_16

    shr-long v0, v5, v3

    neg-long v0, v0

    long-to-int p0, v5

    and-int/2addr p0, v3

    shl-long/2addr v0, v3

    int-to-long v2, p0

    add-long v5, v0, v2

    sget p0, Lyb/b;->a:I

    :cond_16
    return-wide v5

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No components"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()Z
    .locals 5

    invoke-static {}, Lorg/conscrypt/Conscrypt;->version()Lorg/conscrypt/Conscrypt$Version;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result v0

    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    :cond_3
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->patch()I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3
.end method

.method public static final e(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    const-string v0, "from"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "until"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random range is empty: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/c;

    new-instance v5, La5/j;

    invoke-direct {v5, v2}, La5/j;-><init>(La5/c;)V

    iget-object v6, v2, La5/c;->b:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La5/r;

    new-instance v8, La5/k;

    iget v9, v2, La5/c;->e:I

    if-nez v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v3

    :goto_1
    xor-int/2addr v9, v4

    invoke-direct {v8, v7, v9}, La5/k;-><init>(La5/r;Z)V

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v7, v0, v3

    const-string v1, "Multiple components provide %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La5/j;

    iget-object v6, v5, La5/j;->a:La5/c;

    iget-object v6, v6, La5/c;->c:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La5/l;

    iget v8, v7, La5/l;->c:I

    if-nez v8, :cond_9

    move v8, v4

    goto :goto_4

    :cond_9
    move v8, v3

    :goto_4
    if-nez v8, :cond_a

    goto :goto_3

    :cond_a
    new-instance v8, La5/k;

    iget v9, v7, La5/l;->b:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    move v9, v4

    goto :goto_5

    :cond_b
    move v9, v3

    :goto_5
    iget-object v7, v7, La5/l;->a:La5/r;

    invoke-direct {v8, v7, v9}, La5/k;-><init>(La5/r;Z)V

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La5/j;

    iget-object v9, v5, La5/j;->b:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, La5/j;->c:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La5/j;

    iget-object v5, v4, La5/j;->c:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/j;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v2, La5/j;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La5/j;

    iget-object v6, v5, La5/j;->c:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v6, v5, La5/j;->c:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne v3, p0, :cond_13

    return-void

    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La5/j;

    iget-object v2, v1, La5/j;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, La5/j;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v1, v1, La5/j;->a:La5/c;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    new-instance v0, Lcom/google/firebase/components/DependencyCycleException;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/DependencyCycleException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method public static final g(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    sget v0, Lyb/a;->d:I

    sget v0, Lyb/b;->a:I

    return-wide p0
.end method

.method public static final h(J)J
    .locals 7

    new-instance v0, Lxb/i;

    const-wide v1, -0x431bde82d7aL

    const-wide v3, 0x431bde82d7aL

    invoke-direct {v0, v1, v2, v3, v4}, Lxb/i;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lxb/i;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    sget v0, Lyb/a;->d:I

    sget v0, Lyb/b;->a:I

    goto :goto_0

    :cond_0
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lp9/d;->q(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lfc/e;->g(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final i(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/c;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/internal/t;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lkotlinx/serialization/json/o;

    const-string v3, "mode"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v3, v3, Lkotlinx/serialization/json/i;->e:Z

    if-eqz v3, :cond_0

    new-instance v3, Lkotlinx/serialization/json/internal/g;

    invoke-direct {v3, p1, p0}, Lkotlinx/serialization/json/internal/g;-><init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/b;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlinx/serialization/json/internal/e;

    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/e;-><init>(Lkotlinx/serialization/json/internal/k;)V

    :goto_0
    invoke-direct {v0, v3, p0, v1, v2}, Lkotlinx/serialization/json/internal/t;-><init>(Lkotlinx/serialization/json/internal/e;Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/o;)V

    invoke-virtual {v0, p2, p3}, Lkotlinx/serialization/json/internal/t;->m(Lkotlinx/serialization/c;Ljava/lang/Object;)V

    return-void
.end method

.method public static j()Lr7/d;
    .locals 4

    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr7/d;

    new-instance v1, Lr7/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lr7/b;-><init>(I)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr7/d;-><init>(Lr7/b;Lcom/google/firebase/concurrent/h;I)V

    return-object v0

    :cond_0
    invoke-static {}, Lr7/d;->a()Lr7/d;

    move-result-object v0

    return-object v0
.end method

.method public static final k(Lkotlinx/serialization/json/a0;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lkotlinx/serialization/json/internal/w;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "true"

    invoke-static {p0, v0}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string v0, "false"

    invoke-static {p0, v0}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lfc/e;->y()Z

    move-result v0

    const-string v1, "type2"

    if-eqz v0, :cond_0

    const-string p0, "e"

    const-string v0, "isFoldDevice : true, contents type : type2"

    invoke-static {p0, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "type1"

    :goto_0
    return-object v1
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Lfc/e;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get country iso code fail. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "e"

    if-eqz v0, :cond_0

    const-string p0, "fail to get metadata. package is null"

    :goto_0
    invoke-static {v2, p0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v0, 0x80

    :try_start_0
    invoke-static {v0, p0, p1}, Li4/f;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fail to get metadata. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lt/h;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "e"

    const-string v2, "na"

    if-eqz v0, :cond_0

    const-string p0, "Need permission ACCESS_NETWORK_STATE"

    invoke-static {v1, p0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string p0, "ConnectivityManager is null"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "Network is null"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "NetworkCapabilities is null"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "eth"

    return-object p0

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p0, "wifi"

    return-object p0

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p0, "bt"

    return-object p0

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lt/h;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Need permission READ_PHONE_STATE"

    invoke-static {v1, p0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_8

    const-string p0, "TelephonyManager is null"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    :goto_0
    if-nez v3, :cond_9

    const-string p0, "mobile"

    return-object p0

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v2
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "get"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 4

    const-string v0, "e"

    const-string v1, "target version : "

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, p0, v2}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object v0, Lh5/d;->f:Lh5/d;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/u;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/android/b;

    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/android/b;->i(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/v;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/v;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static t()Z
    .locals 4

    const-string v0, "spp activation feature : "

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMP_CONFIG_SPP_ACTIVATION_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "force_activation_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic u(Lkotlinx/coroutines/y0;ZLkotlinx/coroutines/b1;I)Lkotlinx/coroutines/j0;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    check-cast p0, Lkotlinx/coroutines/f1;

    invoke-virtual {p0, p1, v1, p2}, Lkotlinx/coroutines/f1;->D(ZZLvb/b;)Lkotlinx/coroutines/j0;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Li4/f;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAppDisabled error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "e"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static w()Z
    .locals 2

    invoke-static {}, Lfc/e;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "e"

    const-string v0, "data saver mode on"

    invoke-static {p0, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static y()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_WM_CONTROLS_DISPLAY_SWITCH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to fetch fold feature. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v2, v1}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "channel not created : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException;-><init>()V

    throw p0
.end method
