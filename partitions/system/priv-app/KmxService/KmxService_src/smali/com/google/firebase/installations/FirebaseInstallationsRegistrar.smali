.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ln2/l;)Lk5/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(La5/d;)Lk5/d;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(La5/d;)Lk5/d;
    .locals 7

    new-instance v0, Lcom/google/firebase/installations/a;

    const-class v1, Lv4/g;

    invoke-interface {p0, v1}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/g;

    const-class v2, Lh5/e;

    invoke-interface {p0, v2}, La5/d;->e(Ljava/lang/Class;)Lj5/a;

    move-result-object v2

    new-instance v3, La5/r;

    const-class v4, Lz4/a;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4, v5}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v3}, La5/d;->d(La5/r;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    new-instance v4, La5/r;

    const-class v5, Lz4/b;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5, v6}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v4}, La5/d;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/concurrent/j;

    invoke-direct {v4, p0}, Lcom/google/firebase/concurrent/j;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/a;-><init>(Lv4/g;Lj5/a;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/concurrent/j;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/c;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [La5/c;

    const-class v0, Lk5/d;

    invoke-static {v0}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v0

    const-string v1, "fire-installations"

    iput-object v1, v0, La5/b;->c:Ljava/lang/String;

    const-class v2, Lv4/g;

    invoke-static {v2}, La5/l;->a(Ljava/lang/Class;)La5/l;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/l;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, Lh5/e;

    invoke-direct {v2, v3, v4, v5}, La5/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, La5/b;->a(La5/l;)V

    new-instance v2, La5/r;

    const-class v5, Lz4/a;

    const-class v6, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v5, v6}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, La5/l;

    invoke-direct {v5, v2, v4, v3}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v5}, La5/b;->a(La5/l;)V

    new-instance v2, La5/r;

    const-class v5, Lz4/b;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v5, v6}, La5/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, La5/l;

    invoke-direct {v5, v2, v4, v3}, La5/l;-><init>(La5/r;II)V

    invoke-virtual {v0, v5}, La5/b;->a(La5/l;)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    iput-object v2, v0, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, La5/b;->b()La5/c;

    move-result-object v0

    aput-object v0, p0, v3

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    const-class v2, Lh5/d;

    invoke-static {v2}, La5/c;->b(Ljava/lang/Class;)La5/b;

    move-result-object v2

    iput v4, v2, La5/b;->b:I

    new-instance v5, La5/a;

    invoke-direct {v5, v0, v3}, La5/a;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v2, La5/b;->g:Ljava/lang/Object;

    invoke-virtual {v2}, La5/b;->b()La5/c;

    move-result-object v0

    aput-object v0, p0, v4

    const-string v0, "17.2.0"

    invoke-static {v1, v0}, Lp9/d;->u(Ljava/lang/String;Ljava/lang/String;)La5/c;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
