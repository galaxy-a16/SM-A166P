.class public final Lp1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/l;
.implements Lr1/a;
.implements Lr3/d;
.implements Lcom/google/gson/internal/l;
.implements Ly7/a;
.implements Lab/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Lp1/v;->a:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/measurement/b;

    const-wide/16 v0, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/b;-><init>(JLjava/lang/String;Ljava/util/HashMap;)V

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/measurement/b;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/b;-><init>(JLjava/lang/String;Ljava/util/HashMap;)V

    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/z;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lp1/v;->a:I

    const-string v0, "provider"

    .line 5
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lp1/v;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    new-instance v1, Lp1/b;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v1, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance v1, Lp1/u;

    invoke-direct {v1, p0, p1, v0}, Lp1/u;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbb/c;Ls9/a;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lp1/v;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lp1/v;->b:Ljava/lang/Object;

    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lp1/v;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp1/v;->d:Ljava/lang/Object;

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lp1/v;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    move-result-object p1

    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld/t0;Ljava/lang/Class;)V
    .locals 8

    const/16 v0, 0xe

    iput v0, p0, Lp1/v;->a:I

    .line 10
    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    iput-object p2, p0, Lp1/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "newInstance"

    .line 11
    const-class p2, Ljava/io/ObjectStreamClass;

    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "sun.misc.Unsafe"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "allocateInstance"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v6, Lcom/google/gson/internal/n;

    invoke-direct {v6, v4, v5}, Lcom/google/gson/internal/n;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x2

    :try_start_1
    const-string v5, "getConstructorId"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {p2, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v6, Lcom/google/gson/internal/o;

    invoke-direct {v6, p2, v1}, Lcom/google/gson/internal/o;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :try_start_2
    const-class p2, Ljava/io/ObjectInputStream;

    new-array v1, v4, [Ljava/lang/Class;

    aput-object v0, v1, v2

    aput-object v0, v1, v3

    invoke-virtual {p2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v6, Lcom/google/gson/internal/p;

    invoke-direct {v6, p1}, Lcom/google/gson/internal/p;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    new-instance v6, Lcom/google/gson/internal/q;

    invoke-direct {v6}, Lcom/google/gson/internal/q;-><init>()V

    .line 12
    :goto_0
    iput-object v6, p0, Lp1/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Lp1/v;->a:I

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp1/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lp1/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lp1/v;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    new-instance v0, Lr1/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr1/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lp1/v;->d:Ljava/lang/Object;

    new-instance v0, Lq1/m;

    invoke-direct {v0, p1}, Lq1/m;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/g;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lp1/v;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    iput-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv/c;)V
    .locals 5

    const/16 v0, 0x13

    iput v0, p0, Lp1/v;->a:I

    .line 16
    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lv/c;->c:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v0, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_1
    iput-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    .line 20
    iget-object v2, p1, Lv/c;->c:Ljava/lang/Object;

    .line 21
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-gt v1, v0, :cond_3

    iget-object v2, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p1, Lv/c;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p1, Lv/c;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lv/c;I)V
    .locals 0

    const/16 p2, 0x13

    iput p2, p0, Lp1/v;->a:I

    .line 23
    invoke-direct {p0, p1}, Lp1/v;-><init>(Lv/c;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp1/v;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Lp1/v;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lp1/v;-><init>(Lcom/google/android/gms/internal/measurement/b;)V

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    iget-object v2, v0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lp1/v;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Lfc/c;

    iget-object v1, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lfc/c;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    iget-object p0, p0, Lp1/v;->b:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lr3/h;)V
    .locals 2

    iget-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast p1, Lz2/b;

    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p1, Lz2/b;->a:Ll/j;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lz2/b;->a:Ll/j;

    invoke-virtual {p1, v0}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f()Lm5/b;
    .locals 4

    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " tokenExpirationTimestamp"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lm5/b;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-direct {v0, v1, v2, v3, p0}, Lm5/b;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lo2/j;
    .locals 3

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/Priority;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lo2/j;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, [B

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/Priority;

    invoke-direct {v0, v1, v2, p0}, Lo2/j;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lf5/f;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Lc5/c;

    invoke-direct {v0, p1, v1, v2, p0}, Lf5/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lc5/c;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2, v0}, Lc5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No encoder for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object p0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/d0;->A(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final k(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    const-string v0, "tags"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lp1/t;

    invoke-direct {v1, v0, p1}, Lp1/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/room/g;

    invoke-virtual {v0, v1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1

    :cond_0
    return-void
.end method

.method public final l(Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;I)Z
    .locals 6

    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iget-object v1, p2, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2}, Lo/f;->n()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-virtual {p2}, Lo/f;->l()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iput-boolean v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->i:Z

    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->j:I

    iget-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, v1, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Lo/f;->R:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_2

    :cond_2
    move p3, v2

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p2, Lo/f;->R:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const/4 v4, 0x4

    iget-object v5, p2, Lo/f;->n:[I

    if-eqz p3, :cond_4

    aget p3, v5, v2

    if-ne p3, v4, :cond_4

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v1, :cond_5

    aget p3, v5, v3

    if-ne p3, v4, :cond_5

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;->e:I

    invoke-virtual {p2, p1}, Lo/f;->G(I)V

    iget-object p1, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;->f:I

    invoke-virtual {p2, p1}, Lo/f;->D(I)V

    iget-object p0, p0, Lp1/v;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iget-boolean p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;->h:Z

    iput-boolean p3, p2, Lo/f;->y:Z

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b;->g:I

    iput p1, p2, Lo/f;->V:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    iput-boolean v3, p2, Lo/f;->y:Z

    check-cast p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->j:I

    iget-boolean p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->i:Z

    return p0
.end method

.method public final m(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/e1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/e1;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/e1;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/b0;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/e1;-><init>(Landroidx/lifecycle/b0;Landroidx/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Lp1/v;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp1/v;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Lcom/google/android/datatransport/Priority;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp1/v;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null priority"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Lo/g;II)V
    .locals 3

    iget v0, p1, Lo/f;->W:I

    iget v1, p1, Lo/f;->X:I

    const/4 v2, 0x0

    iput v2, p1, Lo/f;->W:I

    iput v2, p1, Lo/f;->X:I

    invoke-virtual {p1, p2}, Lo/f;->G(I)V

    invoke-virtual {p1, p3}, Lo/f;->D(I)V

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    iput v0, p1, Lo/f;->W:I

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    iput v1, p1, Lo/f;->X:I

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Lo/g;

    invoke-virtual {p0}, Lo/g;->J()V

    return-void
.end method

.method public final q(Lo/g;)V
    .locals 8

    iget-object v0, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    iget-object v5, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    iget-object v3, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lo/g;->m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    return-void
.end method

.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lbb/c;

    iget-object v1, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    iget-object v3, v1, Ls9/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lp1/v;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    iget-wide v5, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->b:J

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->c:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lbb/a;

    invoke-virtual/range {v2 .. v7}, Lbb/a;->c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to send log"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->P(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
