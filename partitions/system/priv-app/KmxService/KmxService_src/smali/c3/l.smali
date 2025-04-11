.class public final Lc3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h1;
.implements Lb0/g;
.implements Lcom/google/android/gms/measurement/internal/l2;
.implements Lg3/a;
.implements Lkotlin/coroutines/h;
.implements Lokhttp3/m;
.implements Lcom/google/crypto/tink/shaded/protobuf/r;
.implements Lr3/b;


# static fields
.field public static a:Lc3/l;

.field public static final b:Lc3/l;

.field public static final synthetic c:Lc3/l;

.field public static final d:Lc3/l;

.field public static final e:Lc3/l;

.field public static final synthetic f:Lc3/l;

.field public static final g:Lc3/l;

.field public static final h:Lc3/l;

.field public static final synthetic i:Lc3/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->b:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->c:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->d:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->e:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->f:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->g:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->h:Lc3/l;

    new-instance v0, Lc3/l;

    invoke-direct {v0}, Lc3/l;-><init>()V

    sput-object v0, Lc3/l;->i:Lc3/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq6/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized f()Lc3/l;
    .locals 2

    const-class v0, Lc3/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc3/l;->a:Lc3/l;

    if-nez v1, :cond_0

    new-instance v1, Lc3/l;

    invoke-direct {v1}, Lc3/l;-><init>()V

    sput-object v1, Lc3/l;->a:Lc3/l;

    :cond_0
    sget-object v1, Lc3/l;->a:Lc3/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/f1;
    .locals 0

    new-instance p0, Landroidx/fragment/app/b1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/b1;-><init>(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 p0, 0x0

    add-int/2addr p2, p0

    const/4 v0, 0x2

    move v1, p0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_2

    if-ne v2, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    sget-object v3, Lb0/j;->a:Lb0/i;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move v2, v0

    goto :goto_1

    :cond_0
    :pswitch_0
    move v2, p0

    goto :goto_1

    :cond_1
    :pswitch_1
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lr3/h;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lr3/h;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lr3/h;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    const-string p0, "Rpc"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lr3/h;->d()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error making request: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Lr3/h;->d()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public e()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string p0, "hostname"

    invoke-static {p1, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    const-string v0, "InetAddress.getAllByName(hostname)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/m;->q0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Broken system behaviour for dns lookup of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/o2;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/i6;->b:Lcom/google/android/gms/internal/measurement/i6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/k6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/k6;->n:Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o3;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
