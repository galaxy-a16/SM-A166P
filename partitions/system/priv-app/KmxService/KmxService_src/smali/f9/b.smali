.class public Lf9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/g2;
.implements Lh/l;
.implements Landroidx/appcompat/widget/s;
.implements Lcom/fasterxml/jackson/databind/introspect/h0;
.implements Lc3/c;
.implements Landroidx/core/view/t;
.implements Li4/a;


# static fields
.field public static c:Lf9/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/16 v0, 0x17

    iput v0, p0, Lf9/b;->a:I

    .line 1
    const-class v1, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-direct {p0, v1, v0}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    iput p1, p0, Lf9/b;->a:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const-string v5, "system:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v3, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string p1, "TLS"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string p0, "pinning success"

    invoke-static {p0}, Lv4/b;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pinning fail : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->P(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 7
    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void

    .line 10
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/core/view/t1;

    invoke-direct {p1}, Landroidx/core/view/t1;-><init>()V

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void

    .line 11
    :cond_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lf9/b;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "SmpPref"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lf9/b;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/c;

    invoke-direct {v0, p1}, Lv1/c;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/c2;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lf9/b;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/t1;

    invoke-direct {v0, p1}, Landroidx/core/view/t1;-><init>(Landroidx/core/view/c2;)V

    iput-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/l3;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lf9/b;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/n;)V
    .locals 0

    const/16 p1, 0xf

    iput p1, p0, Lf9/b;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/16 p1, 0x1d

    iput p1, p0, Lf9/b;->a:I

    .line 17
    invoke-direct {p0, p1}, Lf9/b;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p2, p0, Lf9/b;->a:I

    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp9/d;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lf9/b;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lf9/b;
    .locals 2

    const-class v0, Lf9/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf9/b;->c:Lf9/b;

    if-nez v1, :cond_0

    new-instance v1, Lf9/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lf9/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf9/b;->c:Lf9/b;

    :cond_0
    sget-object p0, Lf9/b;->c:Lf9/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/i0;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroidx/core/view/c2;
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/u1;

    invoke-virtual {p0}, Landroidx/core/view/u1;->b()Landroidx/core/view/c2;

    move-result-object p0

    return-object p0
.end method

.method public final d(La3/b;)V
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lb3/i;

    invoke-interface {p0, p1}, Lb3/i;->d(La3/b;)V

    return-void
.end method

.method public final e(Lh/n;Landroid/view/MenuItem;)Z
    .locals 3

    iget p1, p0, Lf9/b;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->E:Landroidx/appcompat/widget/s;

    if-eqz p0, :cond_2

    check-cast p0, Lf9/b;

    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/core/view/l;

    invoke-virtual {p1, p2}, Landroidx/core/view/l;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/q4;

    if-eqz p0, :cond_1

    check-cast p0, Ld/s0;

    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Ld/u0;

    iget-object p0, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :goto_2
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Lg4/n;

    sget v2, Lg4/n;->h:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Lg4/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lg4/n;

    iget-object p0, p0, Lg4/n;->e:Lg4/l;

    if-eqz p0, :cond_3

    check-cast p0, La5/a;

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0, p2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->o(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 2

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lt9/b;

    iget-object p0, p0, Lt9/b;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "samsung_errorlog_agree"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final g(Landroid/graphics/Typeface;)V
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->m(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/view/View;Landroidx/core/view/c2;)Landroidx/core/view/c2;
    .locals 1

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Landroidx/core/view/c2;

    invoke-static {v0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Landroidx/core/view/c2;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p0, p2, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0}, Landroidx/core/view/a2;->c()Landroidx/core/view/c2;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lh/n;)V
    .locals 1

    iget v0, p0, Lf9/b;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Lh/l;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lh/l;->i(Lh/n;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lv1/h;Lv1/j;Landroidx/appcompat/widget/k;)V
    .locals 7

    iget-object v0, p1, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Lv1/h;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lv1/h;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v6, La0/a;

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k(Lh/n;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->k:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Detected application was in foreground"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lf9/b;->o(JZ)V

    :cond_0
    return-void
.end method

.method public final m(Lh/n;Lh/p;)V
    .locals 0

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(JZ)V
    .locals 3

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k5;->o()V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/i3;->u(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->k:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->p0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    :cond_0
    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->k:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lf9/b;->o(JZ)V

    :cond_1
    return-void
.end method

.method public final o(JZ)V
    .locals 9

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Session started, time"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v6, "auto"

    const-string v7, "_sid"

    move-wide v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->k:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_sid"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v1, Lcom/google/android/gms/measurement/internal/o2;->Z:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-string p3, "_aib"

    const-wide/16 v0, 0x1

    invoke-virtual {v6, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/k5;

    iget-object p3, p3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, p3, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v7, "auto"

    const-string v8, "_s"

    move-wide v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/n4;->s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/google/android/gms/internal/measurement/r6;->b:Lcom/google/android/gms/internal/measurement/r6;

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/r6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/s6;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/k5;

    iget-object p3, p3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->c0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/k5;

    iget-object p3, p3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {p3}, Lv1/j;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    invoke-virtual {v4, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v5, "auto"

    const-string v6, "_ssr"

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lf9/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
