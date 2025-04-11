.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 8

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lp5/b;

    invoke-static {v0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v1

    new-instance v2, La5/l;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-class v5, Lp5/a;

    invoke-direct {v2, v3, v4, v5}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v2}, La5/b;->a(La5/l;)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/4 v5, 0x7

    invoke-direct {v2, v5}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    iput-object v2, v1, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, La5/b;->b()La5/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, La5/r;

    const-class v2, Lz4/a;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array v2, v3, [Ljava/lang/Class;

    const-class v5, Lh5/e;

    aput-object v5, v2, v4

    const-class v5, Lh5/f;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    new-instance v5, La5/b;

    const-class v7, Lh5/c;

    invoke-direct {v5, v7, v2}, La5/b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v5, v2}, La5/b;->a(La5/l;)V

    const-class v2, Lv4/g;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v5, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const-class v7, Lh5/d;

    invoke-direct {v2, v3, v4, v7}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v5, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    invoke-direct {v2, v6, v6, v0}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v5, v2}, La5/b;->a(La5/l;)V

    new-instance v0, La5/l;

    invoke-direct {v0, v1, v6, v4}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v5, v0}, La5/b;->a(La5/l;)V

    new-instance v0, La5/a;

    invoke-direct {v0, v1, v3}, La5/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v5, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v5}, La5/b;->b()La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fire-android"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "fire-core"

    const-string v1, "20.4.2"

    invoke-static {v0, v1}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-name"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-model"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-brand"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const-string v1, "android-target-sdk"

    invoke-static {v1, v0}, Lp9/d;->J(Ljava/lang/String;Lcom/google/firebase/concurrent/h;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const-string v1, "android-min-sdk"

    invoke-static {v1, v0}, Lp9/d;->J(Ljava/lang/String;Lcom/google/firebase/concurrent/h;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const-string v1, "android-platform"

    invoke-static {v1, v0}, Lp9/d;->J(Ljava/lang/String;Lcom/google/firebase/concurrent/h;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const-string v1, "android-installer"

    invoke-static {v1, v0}, Lp9/d;->J(Ljava/lang/String;Lcom/google/firebase/concurrent/h;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, Lkotlin/e;->b:Lkotlin/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "1.8.22"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "kotlin"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
