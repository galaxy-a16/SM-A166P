.class public abstract Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lva/f;

.field public final d:Lcom/google/android/gms/common/api/a;

.field public final e:Lb3/a;

.field public final f:I

.field public final g:Landroidx/work/impl/x;

.field public final h:Lb3/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lva/f;Lcom/google/android/gms/common/api/c;)V
    .locals 5

    sget-object v0, Lc3/o;->b:Lc3/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    :try_start_0
    const-class v1, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d;->c:Lva/f;

    iput-object v0, p0, Lcom/google/android/gms/common/api/d;->d:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lb3/a;

    invoke-direct {v0, p2, p1}, Lb3/a;-><init>(Lva/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    new-instance p1, Lb3/s;

    iget-object p1, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lb3/e;->e(Landroid/content/Context;)Lb3/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->h:Lb3/e;

    iget-object p2, p1, Lb3/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/d;->f:I

    iget-object p2, p3, Lcom/google/android/gms/common/api/c;->a:Landroidx/work/impl/x;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d;->g:Landroidx/work/impl/x;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Api must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context is not permitted."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lo2/i;
    .locals 4

    new-instance v0, Lo2/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lo2/i;-><init>(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lo2/i;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Ll/c;

    if-nez v2, :cond_0

    new-instance v2, Ll/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ll/c;-><init>(I)V

    iput-object v2, v0, Lo2/i;->e:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Ll/c;

    invoke-virtual {v2, v1}, Ll/c;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo2/i;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo2/i;->b:Ljava/lang/Object;

    return-object v0
.end method
